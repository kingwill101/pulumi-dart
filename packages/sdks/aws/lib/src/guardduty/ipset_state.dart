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
  /// ID of the GuardDuty IPSet.
  final pulumi.Input<String>? ipSetId;
  /// The URI of the file that contains the IPSet.
  final pulumi.Input<String>? location;
  /// The friendly name to identify the IPSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IPSetState].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded IPSet.
  /// [arn] Amazon Resource Name (ARN) of the GuardDuty IPSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [ipSetId] ID of the GuardDuty IPSet.
  /// [location] The URI of the file that contains the IPSet.
  /// [name] The friendly name to identify the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const IPSetState({
    this.activate,
    this.arn,
    this.detectorId,
    this.format,
    this.ipSetId,
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
      'ipSetId': ?ipSetId,
      'location': ?location,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IPSetState.fromMap(Map<String, dynamic> map) {
    return IPSetState(
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectorId: (() { final guardedValue = map['detectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipSetId: (() { final guardedValue = map['ipSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
