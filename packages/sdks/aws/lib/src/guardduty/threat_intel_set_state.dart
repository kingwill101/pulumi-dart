// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ThreatIntelSet resources.
class ThreatIntelSetState {
  /// Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  final pulumi.Input<bool>? activate;
  /// Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet.
  final pulumi.Input<String>? arn;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String>? detectorId;
  /// The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final pulumi.Input<String>? format;
  /// The URI of the file that contains the ThreatIntelSet.
  final pulumi.Input<String>? location;
  /// The friendly name to identify the ThreatIntelSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ThreatIntelSetState].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  /// [arn] Amazon Resource Name (ARN) of the GuardDuty ThreatIntelSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the ThreatIntelSet.
  /// [name] The friendly name to identify the ThreatIntelSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ThreatIntelSetState({
    this.activate,
    this.arn,
    this.detectorId,
    this.format,
    this.location,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'arn': ?arn,
      'detectorId': ?detectorId,
      'format': ?format,
      'location': ?location,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ThreatIntelSetState.fromMap(Map<String, dynamic> map) {
    return ThreatIntelSetState(
      activate: map['activate'] == null ? null : ((map['activate'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      detectorId: map['detectorId'] == null ? null : ((map['detectorId'] as String).input()).input(),
      format: map['format'] == null ? null : ((map['format'] as String).input()).input(),
      location: map['location'] == null ? null : ((map['location'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

