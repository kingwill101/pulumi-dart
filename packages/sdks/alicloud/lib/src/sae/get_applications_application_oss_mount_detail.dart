// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationsApplicationOssMountDetail {
  /// The name of the bucket.
  final pulumi.Input<String> bucketName;
  /// The path of the bucket.
  final pulumi.Input<String> bucketPath;
  /// The Container mount path.
  final pulumi.Input<String> mountPath;
  /// Whether the container path has readable permission to mount directory resources.
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetApplicationsApplicationOssMountDetail].
  /// [bucketName] The name of the bucket.
  /// [bucketPath] The path of the bucket.
  /// [mountPath] The Container mount path.
  /// [readOnly] Whether the container path has readable permission to mount directory resources.
  const GetApplicationsApplicationOssMountDetail({
    required this.bucketName,
    required this.bucketPath,
    required this.mountPath,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPath': bucketPath,
      'mountPath': mountPath,
      'readOnly': readOnly,
    };
  }

  factory GetApplicationsApplicationOssMountDetail.fromMap(Map<String, dynamic> map) {
    return GetApplicationsApplicationOssMountDetail(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPath: pulumi.Input.fromValue(map['bucketPath'] as String),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
    );
  }
}

