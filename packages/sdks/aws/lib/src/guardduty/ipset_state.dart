// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPSet resources.
class IPSetState {
  /// Specifies whether GuardDuty is to start using the uploaded IPSet.
  final pulumi.Input<bool>? activate;
  /// Amazon Resource Name (ARN) of the GuardDuty IPSet.
  final pulumi.Input<String>? arn;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String>? detectorId;
  /// The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final pulumi.Input<String>? format;
  /// The URI of the file that contains the IPSet.
  final pulumi.Input<String>? location;
  /// The friendly name to identify the IPSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IPSetState].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded IPSet.
  /// [arn] Amazon Resource Name (ARN) of the GuardDuty IPSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the IPSet.
  /// [name] The friendly name to identify the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IPSetState({
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

  factory IPSetState.fromMap(Map<String, dynamic> map) {
    return IPSetState(
      activate: map['activate'] == null ? null : (map['activate'] as bool).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      detectorId: map['detectorId'] == null ? null : (map['detectorId'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

