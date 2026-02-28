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
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IPSetArgs].
  /// [activate] Specifies whether GuardDuty is to start using the uploaded IPSet.
  /// [detectorId] The detector ID of the GuardDuty.
  /// [format] The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  /// [location] The URI of the file that contains the IPSet.
  /// [name] The friendly name to identify the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  IPSetArgs({
    required bool activate,
    required String detectorId,
    required String format,
    required String location,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) :
      activate = pulumi.Input.asInput<bool>(activate),
      detectorId = pulumi.Input.asInput<String>(detectorId),
      format = pulumi.Input.asInput<String>(format),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activate: map['activate'] as bool,
      detectorId: map['detectorId'] as String,
      format: map['format'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

