import 'package:pulumi/src/settings.dart';
import 'package:test/test.dart';

void main() {
  group('preview', () {
    final runtime = Runtime();

    tearDown(() {
      runtime.disconnectSync();
      runtime.resetOptions(
        project: null,
        stack: null,
        parallel: null,
        engineAddr: null,
        monitorAddr: null,
        preview: false,
        organization: null,
      );
    });

    test('resetOptions honors preview flag', () {
      runtime.resetOptions(
        project: 'proj',
        stack: 'stack',
        preview: false,
        organization: 'org',
      );
      expect(runtime.isDryRun, isFalse);

      runtime.resetOptions(preview: true);
      expect(runtime.isDryRun, isTrue);
    });
  });
}
