// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apprunner_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// Arguments for getHostedZoneId.
/// {@endtemplate}
/// {@macro pulumi_apprunner_get_hosted_zone_id_get_hosted_zone_id_args_doc}
class GetHostedZoneIdArgs {
  /// Name of the Region whose AWS App Runner service HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetHostedZoneIdArgs].
  /// [region] Name of the Region whose AWS App Runner service HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  GetHostedZoneIdArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetHostedZoneIdArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

