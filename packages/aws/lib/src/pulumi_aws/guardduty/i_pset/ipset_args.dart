// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IPSet.
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

  IPSetArgs({
    required this.activate,
    required this.detectorId,
    required this.format,
    required this.location,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activate'] = activate;
    map['detectorId'] = detectorId;
    map['format'] = format;
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IPSetArgs.fromMap(Map<String, dynamic> map) {
    return IPSetArgs(
      activate: pulumi.Input.asInput<bool>(map['activate']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      format: pulumi.Input.asInput<String>(map['format']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
