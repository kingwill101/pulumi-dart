// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_response.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class SourceResponseFirebaserulesV1 {
  /// `File` set constituting the `Source` bundle.
  final List<FileResponse> files;

  SourceResponseFirebaserulesV1({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = pulumi.Input.encodeList<FileResponse, Map<String, dynamic>>(
        files, (value) => value.toMap());
    return map;
  }

  factory SourceResponseFirebaserulesV1.fromMap(Map<String, dynamic> map) {
    return SourceResponseFirebaserulesV1(
      files: pulumi.Input.decodeList<FileResponse>(
          map['files'],
          (value) =>
              FileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
