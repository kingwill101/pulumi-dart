// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_threat_intel_set_threat_intel_set_args_doc}
/// The set of arguments for ThreatIntelSet.
/// {@endtemplate}
/// {@macro pulumi_guardduty_threat_intel_set_threat_intel_set_args_doc}
class ThreatIntelSetArgs {
  /// Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  final pulumi.Input<bool> activate;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String> detectorId;
  /// The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final pulumi.Input<String> format;
  /// The URI of the file that contains the ThreatIntelSet.
  final pulumi.Input<String> location;
  /// The friendly name to identify the ThreatIntelSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ThreatIntelSetArgs].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded ThreatIntelSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the ThreatIntelSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the ThreatIntelSet.
  /// [name] The friendly name to identify the ThreatIntelSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ThreatIntelSetArgs({
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

  factory ThreatIntelSetArgs.fromMap(Map<String, dynamic> map) {
    return ThreatIntelSetArgs(
      activate: (map['activate'] as bool).input(),
      detectorId: (map['detectorId'] as String).input(),
      format: (map['format'] as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

