// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'file.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class Source9 {
  /// `File` set constituting the `Source` bundle.
  final List<File> files;

  Source9({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = Input.encodeList<File, Map<String, dynamic>>(
        files, (value) => value.toMap());
    return map;
  }

  factory Source9.fromMap(Map<String, dynamic> map) {
    return Source9(
      files: Input.decodeList<File>(map['files'],
          (value) => File.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
