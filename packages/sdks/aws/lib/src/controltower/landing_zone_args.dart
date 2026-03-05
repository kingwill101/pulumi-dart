// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_controltower_landing_zone_landing_zone_args_doc}
/// The set of arguments for LandingZone.
/// {@endtemplate}
/// {@macro pulumi_controltower_landing_zone_landing_zone_args_doc}
class LandingZoneArgs {
  /// The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  final pulumi.Input<String> manifestJson;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The landing zone version.
  final pulumi.Input<String> version;

  /// Creates a new [LandingZoneArgs].
  /// [manifestJson] The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [version] The landing zone version.
  LandingZoneArgs({
    required this.manifestJson,
    this.region,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manifestJson': manifestJson,
      'region': ?region,
      'tags': ?tags,
      'version': version,
    };
  }

  factory LandingZoneArgs.fromMap(Map<String, dynamic> map) {
    return LandingZoneArgs(
      manifestJson: pulumi.Input.fromValue(map['manifestJson'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

