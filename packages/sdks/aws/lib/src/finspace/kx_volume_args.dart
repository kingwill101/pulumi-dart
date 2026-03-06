// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_volume_nas1_configuration.dart';

/// {@template pulumi_finspace_kx_volume_kx_volume_args_doc}
/// The set of arguments for KxVolume.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_volume_kx_volume_args_doc}
class KxVolumeArgs {
  /// The identifier of the AWS Availability Zone IDs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> availabilityZones;
  /// The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// * `SINGLE` - Assigns one availability zone per volume.
  final pulumi.Input<String> azMode;
  /// Description of the volume.
  final pulumi.Input<String>? description;
  /// A unique identifier for the kdb environment, whose clusters can attach to the volume.
  final pulumi.Input<String> environmentId;
  /// Unique name for the volumr that you want to create.
  final pulumi.Input<String>? name;
  /// Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  final pulumi.Input<List<KxVolumeNas1Configuration>>? nas1Configurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
  final pulumi.Input<String> type;

  /// Creates a new [KxVolumeArgs].
  /// [availabilityZones] The identifier of the AWS Availability Zone IDs.
  /// [azMode] The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// [description] Description of the volume.
  /// [environmentId] A unique identifier for the kdb environment, whose clusters can attach to the volume.
  /// [name] Unique name for the volumr that you want to create.
  /// [nas1Configurations] Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  /// [type] The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
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

