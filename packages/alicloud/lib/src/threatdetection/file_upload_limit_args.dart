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
  FileUploadLimitArgs({
    required int limit,
  }) :
      limit = pulumi.Input.asInput<int>(limit);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
    };
  }

  factory FileUploadLimitArgs.fromMap(Map<String, dynamic> map) {
    return FileUploadLimitArgs(
      limit: map['limit'] as int,
    );
  }
}

