// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_get_mount_target_get_mount_target_args_doc}
/// Arguments for getMountTarget.
/// {@endtemplate}
/// {@macro pulumi_efs_get_mount_target_get_mount_target_args_doc}
class GetMountTargetArgs {
  /// ID or ARN of the access point whose mount target that you want to find. It must be included if a `file_system_id` and `mount_target_id` are not included.
  final pulumi.Input<String>? accessPointId;
  /// ID or ARN of the file system whose mount target that you want to find. It must be included if an `access_point_id` and `mount_target_id` are not included.
  final pulumi.Input<String>? fileSystemId;
  /// ID or ARN of the mount target that you want to find. It must be included in your request if an `access_point_id` and `file_system_id` are not included.
  final pulumi.Input<String>? mountTargetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetMountTargetArgs].
  /// [accessPointId] ID or ARN of the access point whose mount target that you want to find. It must be included if a `file_system_id` and `mount_target_id` are not included.
  /// [fileSystemId] ID or ARN of the file system whose mount target that you want to find. It must be included if an `access_point_id` and `mount_target_id` are not included.
  /// [mountTargetId] ID or ARN of the mount target that you want to find. It must be included in your request if an `access_point_id` and `file_system_id` are not included.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMountTargetArgs({
    String? accessPointId,
    String? fileSystemId,
    String? mountTargetId,
    String? region,
  }) :
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      mountTargetId = pulumi.Input.asOptionalInput<String>(mountTargetId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'fileSystemId': ?fileSystemId,
      'mountTargetId': ?mountTargetId,
      'region': ?region,
    };
  }

  factory GetMountTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetMountTargetArgs(
      accessPointId: map['accessPointId'] == null ? null : map['accessPointId'] as String,
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      mountTargetId: map['mountTargetId'] == null ? null : map['mountTargetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

