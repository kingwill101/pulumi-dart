// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../kx_volume_nas1_configuration/kx_volume_nas1_configuration.dart';

/// The set of arguments for KxVolume.
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

  KxVolumeArgs({
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
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    map['azMode'] = azMode;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nas1ConfigurationsValue = nas1Configurations;
    if (nas1ConfigurationsValue != null) {
      map['nas1Configurations'] = pulumi.Input.mapOptionalInputValue<
              List<KxVolumeNas1Configuration>, List<Map<String, dynamic>>>(
          nas1ConfigurationsValue,
          (value) => pulumi.Input.encodeList<KxVolumeNas1Configuration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory KxVolumeArgs.fromMap(Map<String, dynamic> map) {
    return KxVolumeArgs(
      availabilityZones:
          pulumi.Input.asInput<List<String>>(map['availabilityZones']),
      azMode: pulumi.Input.asInput<String>(map['azMode']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nas1Configurations:
          pulumi.Input.asOptionalInput<List<KxVolumeNas1Configuration>>(
              map['nas1Configurations']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
