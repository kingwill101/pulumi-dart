// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticbeanstalk_get_hosted_zone_get_hosted_zone_args_doc}
/// Arguments for getHostedZone.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_get_hosted_zone_get_hosted_zone_args_doc}
class GetHostedZoneArgs {
  /// Name of the Region whose hosted zone is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetHostedZoneArgs].
  /// [region] Name of the Region whose hosted zone is desired. Defaults to the Region set in the provider configuration.
  GetHostedZoneArgs({
    pulumi.Output<String>? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetHostedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

