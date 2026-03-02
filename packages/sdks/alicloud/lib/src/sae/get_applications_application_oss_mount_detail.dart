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
  GetApplicationsApplicationOssMountDetail({
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
      bucketName: (map['bucketName'] as String).input(),
      bucketPath: (map['bucketPath'] as String).input(),
      mountPath: (map['mountPath'] as String).input(),
      readOnly: (map['readOnly'] as bool).input(),
    );
  }
}

