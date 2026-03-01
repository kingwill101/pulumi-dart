// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class Source {
  /// `File` set constituting the `Source` bundle.
  final List<File> files;

  /// Creates a new [Source].
  /// [files] `File` set constituting the `Source` bundle.
  Source({required this.files});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.encodeList<File, Map<String, dynamic>>(
        files,
        (value) => value.toMap(),
      ),
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      files: pulumi.Input.decodeList<File>(
        map['files'],
        (value) => File.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
