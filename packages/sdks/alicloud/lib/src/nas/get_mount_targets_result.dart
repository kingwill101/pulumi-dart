// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mount_targets_target.dart';

/// Result data returned by getMountTargets.
class GetMountTargetsResult {
  /// AccessGroup of The MountTarget.
  final String? accessGroupName;
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of MountTargetDomain.
  final List<String> ids;
  /// MountTargetDomain of the MountTarget.
  final String? mountTargetDomain;
  /// (Available 1.95.0+) NetworkType of The MountTarget.
  final String? networkType;
  final String? outputFile;
  /// (Available 1.95.0+) The status of the mount target.
  final String? status;
  /// A list of MountTargetDomains. Each element contains the following attributes:
  final List<GetMountTargetsTarget> targets;
  /// Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  final String? type;
  /// VpcId of The MountTarget.
  final String? vpcId;
  /// VSwitchId of The MountTarget.
  final String? vswitchId;

  /// Creates a new [GetMountTargetsResult].
  /// [accessGroupName] AccessGroup of The MountTarget.
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of MountTargetDomain.
  /// [mountTargetDomain] MountTargetDomain of the MountTarget.
  /// [networkType] (Available 1.95.0+) NetworkType of The MountTarget.
  /// [outputFile] Optional.
  /// [status] (Available 1.95.0+) The status of the mount target.
  /// [targets] A list of MountTargetDomains. Each element contains the following attributes:
  /// [type] Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  /// [vpcId] VpcId of The MountTarget.
  /// [vswitchId] VSwitchId of The MountTarget.
  const GetMountTargetsResult({
    this.accessGroupName,
    required this.fileSystemId,
    required this.id,
    required this.ids,
    this.mountTargetDomain,
    this.networkType,
    this.outputFile,
    this.status,
    required this.targets,
    this.type,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'fileSystemId': fileSystemId,
      'id': id,
      'ids': ids,
      'mountTargetDomain': ?mountTargetDomain,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'status': ?status,
      'targets': pulumi.Input.encodeList<GetMountTargetsTarget, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'type': ?type,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetMountTargetsResult.fromMap(Map<String, dynamic> map) {
    return GetMountTargetsResult(
      accessGroupName: (() { final guardedValue = map['accessGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      mountTargetDomain: (() { final guardedValue = map['mountTargetDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targets: pulumi.Input.decodeList<GetMountTargetsTarget>(map['targets']!, (value) => GetMountTargetsTarget.fromMap((value as Map).cast<String, dynamic>())),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

