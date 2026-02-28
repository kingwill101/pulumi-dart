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
    bool? defaultForNewLaunches,
    String? id,
    bool? latestValidTill,
    String? region,
  }) :
      defaultForNewLaunches = pulumi.Input.asOptionalInput<bool>(defaultForNewLaunches),
      id = pulumi.Input.asOptionalInput<String>(id),
      latestValidTill = pulumi.Input.asOptionalInput<bool>(latestValidTill),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      defaultForNewLaunches: map['defaultForNewLaunches'] == null ? null : map['defaultForNewLaunches'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      latestValidTill: map['latestValidTill'] == null ? null : map['latestValidTill'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

