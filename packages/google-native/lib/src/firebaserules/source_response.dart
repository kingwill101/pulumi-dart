// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_response.dart';

/// `Source` is one or more `File` messages comprising a logical set of rules.
class SourceResponse {
  /// `File` set constituting the `Source` bundle.
  final List<FileResponse> files;

  /// Creates a new [SourceResponse].
  /// [files] `File` set constituting the `Source` bundle.
  SourceResponse({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.encodeList<FileResponse, Map<String, dynamic>>(files, (value) => value.toMap()),
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      files: pulumi.Input.decodeList<FileResponse>(map['files'], (value) => FileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

