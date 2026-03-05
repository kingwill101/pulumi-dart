// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_volume_attached_cluster.dart';
import 'kx_volume_nas1_configuration.dart';

/// Input properties used for looking up and filtering KxVolume resources.
class KxVolumeState {
  /// Amazon Resource Name (ARN) identifier of the KX volume.
  final pulumi.Input<String>? arn;
  final pulumi.Input<List<KxVolumeAttachedCluster>>? attachedClusters;
  /// The identifier of the AWS Availability Zone IDs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? availabilityZones;
  /// The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// * `SINGLE` - Assigns one availability zone per volume.
  final pulumi.Input<String>? azMode;
  /// The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? createdTimestamp;
  /// Description of the volume.
  final pulumi.Input<String>? description;
  /// A unique identifier for the kdb environment, whose clusters can attach to the volume.
  final pulumi.Input<String>? environmentId;
  /// Last timestamp at which the volume was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Unique name for the volumr that you want to create.
  final pulumi.Input<String>? name;
  /// Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  final pulumi.Input<List<KxVolumeNas1Configuration>>? nas1Configurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of volume creation.
  /// * `CREATING` - The volume creation is in progress.
  /// * `CREATE_FAILED` - The volume creation has failed.
  /// * `ACTIVE` - The volume is active.
  /// * `UPDATING` - The volume is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `UPDATED` - The volume is successfully updated.
  /// * `DELETING` - The volume is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the volume.
  /// * `DELETED` - The volume is successfully deleted.
  final pulumi.Input<String>? status;
  /// The error message when a failed state occurs.
  final pulumi.Input<String>? statusReason;
  /// A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
  final pulumi.Input<String>? type;

  /// Creates a new [KxVolumeState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX volume.
  /// [attachedClusters] Optional.
  /// [availabilityZones] The identifier of the AWS Availability Zone IDs.
  /// [azMode] The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// [createdTimestamp] The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [description] Description of the volume.
  /// [environmentId] A unique identifier for the kdb environment, whose clusters can attach to the volume.
  /// [lastModifiedTimestamp] Last timestamp at which the volume was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Unique name for the volumr that you want to create.
  /// [nas1Configurations] Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of volume creation.
  /// [statusReason] The error message when a failed state occurs.
  /// [tags] A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  /// [tagsAll] Optional.
  /// [type] The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
  KxVolumeState({
    this.arn,
    this.attachedClusters,
    this.availabilityZones,
    this.azMode,
    this.createdTimestamp,
    this.description,
    this.environmentId,
    this.lastModifiedTimestamp,
    this.name,
    this.nas1Configurations,
    this.region,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachedClusters': ?pulumi.Input.mapOptionalInputValue<List<KxVolumeAttachedCluster>, List<Map<String, dynamic>>>(attachedClusters, (value) => pulumi.Input.encodeList<KxVolumeAttachedCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZones': ?availabilityZones,
      'azMode': ?azMode,
      'createdTimestamp': ?createdTimestamp,
      'description': ?description,
      'environmentId': ?environmentId,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'nas1Configurations': ?pulumi.Input.mapOptionalInputValue<List<KxVolumeNas1Configuration>, List<Map<String, dynamic>>>(nas1Configurations, (value) => pulumi.Input.encodeList<KxVolumeNas1Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory KxVolumeState.fromMap(Map<String, dynamic> map) {
    return KxVolumeState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachedClusters: (() { final guardedValue = map['attachedClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxVolumeAttachedCluster>(guardedValue, (value) => KxVolumeAttachedCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azMode: (() { final guardedValue = map['azMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTimestamp: (() { final guardedValue = map['lastModifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nas1Configurations: (() { final guardedValue = map['nas1Configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxVolumeNas1Configuration>(guardedValue, (value) => KxVolumeNas1Configuration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

