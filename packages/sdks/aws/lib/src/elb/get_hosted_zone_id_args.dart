// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// Arguments for getHostedZoneId.
/// {@endtemplate}
/// {@macro pulumi_elb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
class GetHostedZoneIdArgs {
  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetHostedZoneIdArgs].
  /// [region] Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  GetHostedZoneIdArgs({
    pulumi.Output<String>? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetHostedZoneIdArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

