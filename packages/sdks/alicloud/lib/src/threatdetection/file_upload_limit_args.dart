// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_file_upload_limit_file_upload_limit_args_doc}
/// The set of arguments for FileUploadLimit.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_file_upload_limit_file_upload_limit_args_doc}
class FileUploadLimitArgs {
  /// File Upload Threshold.
  final pulumi.Input<int> limit;

  /// Creates a new [FileUploadLimitArgs].
  /// [limit] File Upload Threshold.
  const FileUploadLimitArgs({
    required this.limit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
    };
  }

  factory FileUploadLimitArgs.fromMap(Map<String, dynamic> map) {
    return FileUploadLimitArgs(
      limit: pulumi.Input.fromValue(map['limit'] as int),
    );
  }
}

