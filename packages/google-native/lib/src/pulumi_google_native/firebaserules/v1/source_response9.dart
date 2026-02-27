// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'file_response.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class SourceResponse9 {
  /// `File` set constituting the `Source` bundle.
  final List<FileResponse> files;

  SourceResponse9({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = Input.encodeList<FileResponse, Map<String, dynamic>>(
        files, (value) => value.toMap());
    return map;
  }

  factory SourceResponse9.fromMap(Map<String, dynamic> map) {
    return SourceResponse9(
      files: Input.decodeList<FileResponse>(
          map['files'],
          (value) =>
              FileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
