// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_rds_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// When enabled, returns the default certificate for new RDS instances.
  final pulumi.Input<bool>? defaultForNewLaunches;
  /// Certificate identifier. For example, `rds-ca-2019`.
  final pulumi.Input<String>? id;
  /// When enabled, returns the certificate with the latest `ValidTill`.
  final pulumi.Input<bool>? latestValidTill;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCertificateArgs].
  /// [defaultForNewLaunches] When enabled, returns the default certificate for new RDS instances.
  /// [id] Certificate identifier. For example, `rds-ca-2019`.
  /// [latestValidTill] When enabled, returns the certificate with the latest `ValidTill`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCertificateArgs({
    this.defaultForNewLaunches,
    this.id,
    this.latestValidTill,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultForNewLaunches': ?defaultForNewLaunches,
      'id': ?id,
      'latestValidTill': ?latestValidTill,
      'region': ?region,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      defaultForNewLaunches: (() { final guardedValue = map['defaultForNewLaunches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestValidTill: (() { final guardedValue = map['latestValidTill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

