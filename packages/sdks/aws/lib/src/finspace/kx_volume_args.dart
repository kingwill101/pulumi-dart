// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_volume_nas1_configuration.dart';

/// {@template pulumi_finspace_kx_volume_kx_volume_args_doc}
/// The set of arguments for KxVolume.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_volume_kx_volume_args_doc}
class KxVolumeArgs {
  /// Identifier of the AWS Availability Zone IDs.
  final pulumi.Input<List<String>> availabilityZones;
  /// Number of availability zones you want to assign per volume. Currently, FinSpace only supports `SINGLE` for volumes, which assigns one availability zone per volume.
  final pulumi.Input<String> azMode;
  /// Description of the volume.
  final pulumi.Input<String?>? description;
  /// Unique identifier for the kdb environment, whose clusters can attach to the volume.
  final pulumi.Input<String> environmentId;
  /// Unique name for the volume that you want to create.
  final pulumi.Input<String?>? name;
  /// Configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volumeType` is `NAS_1`. See `nas1Configuration` Block below.
  final pulumi.Input<List<KxVolumeNas1Configuration>?>? nas1Configurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value pairs to label the volume. You can add up to 50 tags to a volume.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1Configuration`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [KxVolumeArgs].
  /// [availabilityZones] Identifier of the AWS Availability Zone IDs.
  /// [azMode] Number of availability zones you want to assign per volume. Currently, FinSpace only supports `SINGLE` for volumes, which assigns one availability zone per volume.
  /// [description] Description of the volume.
  /// [environmentId] Unique identifier for the kdb environment, whose clusters can attach to the volume.
  /// [name] Unique name for the volume that you want to create.
  /// [nas1Configurations] Configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volumeType` is `NAS_1`. See `nas1Configuration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value pairs to label the volume. You can add up to 50 tags to a volume.
  /// [type] Type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1Configuration`.
  const KxVolumeArgs({
    required this.availabilityZones,
    required this.azMode,
    this.description,
    required this.environmentId,
    this.name,
    this.nas1Configurations,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'azMode': azMode,
      'description': ?description,
      'environmentId': environmentId,
      'name': ?name,
      'nas1Configurations': ?pulumi.Input.mapOptionalInputValue<List<KxVolumeNas1Configuration>, List<Map<String, dynamic>>>(nas1Configurations, (value) => pulumi.Input.encodeList<KxVolumeNas1Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory KxVolumeArgs.fromMap(Map<String, dynamic> map) {
    return KxVolumeArgs(
      availabilityZones: pulumi.Input.fromValue((map['availabilityZones'] as List).cast<String>()),
      azMode: pulumi.Input.fromValue(map['azMode'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nas1Configurations: (() { final guardedValue = map['nas1Configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxVolumeNas1Configuration>(guardedValue, (value) => KxVolumeNas1Configuration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
