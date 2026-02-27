// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class SourceFirebaserulesV1 {
  /// `File` set constituting the `Source` bundle.
  final List<File> files;

  SourceFirebaserulesV1({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = pulumi.Input.encodeList<File, Map<String, dynamic>>(
        files, (value) => value.toMap());
    return map;
  }

  factory SourceFirebaserulesV1.fromMap(Map<String, dynamic> map) {
    return SourceFirebaserulesV1(
      files: pulumi.Input.decodeList<File>(map['files'],
          (value) => File.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
