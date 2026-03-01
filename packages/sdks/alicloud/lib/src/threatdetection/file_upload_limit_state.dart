// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FileUploadLimit resources.
class FileUploadLimitState {
  /// File Upload Threshold.
  final pulumi.Input<int>? limit;

  /// Creates a new [FileUploadLimitState].
  /// [limit] File Upload Threshold.
  FileUploadLimitState({
    pulumi.Output<int>? limit,
  }) :
      limit = pulumi.Input.asOptionalInput<int>(limit);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
    };
  }

  factory FileUploadLimitState.fromMap(Map<String, dynamic> map) {
    return FileUploadLimitState(
      limit: map['limit'] == null ? null : pulumi.Output.create<int>(map['limit'] as int),
    );
  }
}

