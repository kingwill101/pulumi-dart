// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LandingZone.
class LandingZoneArgs {
  /// The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  final pulumi.Input<String> manifestJson;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The landing zone version.
  final pulumi.Input<String> version;

  LandingZoneArgs({
    required this.manifestJson,
    this.region,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manifestJson'] = manifestJson;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['version'] = version;
    return map;
  }

  factory LandingZoneArgs.fromMap(Map<String, dynamic> map) {
    return LandingZoneArgs(
      manifestJson: pulumi.Input.asInput<String>(map['manifestJson']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: pulumi.Input.asInput<String>(map['version']),
    );
  }
}
