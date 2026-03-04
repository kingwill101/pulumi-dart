// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FileUploadLimit resources.
class FileUploadLimitState {
  /// File Upload Threshold.
  final pulumi.Input<int>? limit;

  /// Creates a new [FileUploadLimitState].
  /// [limit] File Upload Threshold.
  FileUploadLimitState({this.limit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'limit': ?limit};
  }

  factory FileUploadLimitState.fromMap(Map<String, dynamic> map) {
    return FileUploadLimitState(
      limit: (() {
        final guardedValue = map['limit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
