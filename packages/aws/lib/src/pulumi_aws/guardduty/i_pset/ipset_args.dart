// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IPSet.
class IPSetArgs {
  /// Specifies whether GuardDuty is to start using the uploaded IPSet.
  final Input<bool> activate;

  /// The detector ID of the GuardDuty.
  final Input<String> detectorId;

  /// The format of the file that contains the IPSet. Valid values: `TXT` | `STIX` | `OTX_CSV` | `ALIEN_VAULT` | `PROOF_POINT` | `FIRE_EYE`
  final Input<String> format;

  /// The URI of the file that contains the IPSet.
  final Input<String> location;

  /// The friendly name to identify the IPSet.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      activate: Input.asInput<bool>(map['activate']),
      detectorId: Input.asInput<String>(map['detectorId']),
      format: Input.asInput<String>(map['format']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
