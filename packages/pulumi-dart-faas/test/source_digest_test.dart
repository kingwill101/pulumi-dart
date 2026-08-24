import 'dart:io';

import 'package:pulumi_dart_faas/src/build/source_digest.dart';
import 'package:test/test.dart';

void main() {
  test('changes for Dart sources and manifests but ignores build output', () {
    final root = Directory.systemTemp.createTempSync('faas-source-digest-');
    addTearDown(() => root.deleteSync(recursive: true));
    final source = File('${root.path}/lib/main.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync('void main() {}');
    File('${root.path}/pubspec.yaml').writeAsStringSync('name: example');

    final initial = dartBuildSourceDigest(root.path);
    source.writeAsStringSync('void main() => print("changed");');
    final sourceChanged = dartBuildSourceDigest(root.path);
    expect(sourceChanged, isNot(initial));

    File('${root.path}/build/output.js')
      ..createSync(recursive: true)
      ..writeAsStringSync('ignored');
    expect(dartBuildSourceDigest(root.path), sourceChanged);

    File('${root.path}/pubspec.lock').writeAsStringSync('packages: {}');
    expect(dartBuildSourceDigest(root.path), isNot(sourceChanged));
  });
}
