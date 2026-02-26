// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMountTarget.
class GetMountTargetArgs {
  /// ID or ARN of the access point whose mount target that you want to find. It must be included if a <span pulumi-lang-nodejs="`fileSystemId`" pulumi-lang-dotnet="`FileSystemId`" pulumi-lang-go="`fileSystemId`" pulumi-lang-python="`file_system_id`" pulumi-lang-yaml="`fileSystemId`" pulumi-lang-java="`fileSystemId`">`file_system_id`</span> and <span pulumi-lang-nodejs="`mountTargetId`" pulumi-lang-dotnet="`MountTargetId`" pulumi-lang-go="`mountTargetId`" pulumi-lang-python="`mount_target_id`" pulumi-lang-yaml="`mountTargetId`" pulumi-lang-java="`mountTargetId`">`mount_target_id`</span> are not included.
  final Input<String>? accessPointId;

  /// ID or ARN of the file system whose mount target that you want to find. It must be included if an <span pulumi-lang-nodejs="`accessPointId`" pulumi-lang-dotnet="`AccessPointId`" pulumi-lang-go="`accessPointId`" pulumi-lang-python="`access_point_id`" pulumi-lang-yaml="`accessPointId`" pulumi-lang-java="`accessPointId`">`access_point_id`</span> and <span pulumi-lang-nodejs="`mountTargetId`" pulumi-lang-dotnet="`MountTargetId`" pulumi-lang-go="`mountTargetId`" pulumi-lang-python="`mount_target_id`" pulumi-lang-yaml="`mountTargetId`" pulumi-lang-java="`mountTargetId`">`mount_target_id`</span> are not included.
  final Input<String>? fileSystemId;

  /// ID or ARN of the mount target that you want to find. It must be included in your request if an <span pulumi-lang-nodejs="`accessPointId`" pulumi-lang-dotnet="`AccessPointId`" pulumi-lang-go="`accessPointId`" pulumi-lang-python="`access_point_id`" pulumi-lang-yaml="`accessPointId`" pulumi-lang-java="`accessPointId`">`access_point_id`</span> and <span pulumi-lang-nodejs="`fileSystemId`" pulumi-lang-dotnet="`FileSystemId`" pulumi-lang-go="`fileSystemId`" pulumi-lang-python="`file_system_id`" pulumi-lang-yaml="`fileSystemId`" pulumi-lang-java="`fileSystemId`">`file_system_id`</span> are not included.
  final Input<String>? mountTargetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      accessPointId: Input.asOptionalInput<String>(map['accessPointId']),
      fileSystemId: Input.asOptionalInput<String>(map['fileSystemId']),
      mountTargetId: Input.asOptionalInput<String>(map['mountTargetId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
