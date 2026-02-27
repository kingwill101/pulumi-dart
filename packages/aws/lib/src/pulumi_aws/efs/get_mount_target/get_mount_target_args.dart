// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMountTarget.
class GetMountTargetArgs {
  /// ID or ARN of the access point whose mount target that you want to find. It must be included if a `file_system_id` and `mount_target_id` are not included.
  final pulumi.Input<String>? accessPointId;

  /// ID or ARN of the file system whose mount target that you want to find. It must be included if an `access_point_id` and `mount_target_id` are not included.
  final pulumi.Input<String>? fileSystemId;

  /// ID or ARN of the mount target that you want to find. It must be included in your request if an `access_point_id` and `file_system_id` are not included.
  final pulumi.Input<String>? mountTargetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetMountTargetArgs({
    this.accessPointId,
    this.fileSystemId,
    this.mountTargetId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPointIdValue = accessPointId;
    if (accessPointIdValue != null) {
      map['accessPointId'] = accessPointIdValue;
    }
    final fileSystemIdValue = fileSystemId;
    if (fileSystemIdValue != null) {
      map['fileSystemId'] = fileSystemIdValue;
    }
    final mountTargetIdValue = mountTargetId;
    if (mountTargetIdValue != null) {
      map['mountTargetId'] = mountTargetIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetMountTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetMountTargetArgs(
      accessPointId: pulumi.Input.asOptionalInput<String>(map['accessPointId']),
      fileSystemId: pulumi.Input.asOptionalInput<String>(map['fileSystemId']),
      mountTargetId: pulumi.Input.asOptionalInput<String>(map['mountTargetId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
