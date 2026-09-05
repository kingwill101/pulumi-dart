// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_i_pset_ipset_args_doc}
/// The set of arguments for IPSet.
/// {@endtemplate}
/// {@macro pulumi_guardduty_i_pset_ipset_args_doc}
class IPSetArgs {
  /// Specifies whether GuardDuty is to start using the uploaded IPSet.
  final pulumi.Input<bool> activate;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String> detectorId;
  /// The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final pulumi.Input<String> format;
  /// The URI of the file that contains the IPSet.
  final pulumi.Input<String> location;
  /// The friendly name to identify the IPSet.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IPSetArgs].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded IPSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the IPSet.
  /// [name] The friendly name to identify the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const IPSetArgs({
    required this.activate,
    required this.detectorId,
    required this.format,
    required this.location,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': activate,
      'detectorId': detectorId,
      'format': format,
      'location': location,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory IPSetArgs.fromMap(Map<String, dynamic> map) {
    return IPSetArgs(
      activate: pulumi.Input.fromValue(map['activate'] as bool),
      detectorId: pulumi.Input.fromValue(map['detectorId'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
