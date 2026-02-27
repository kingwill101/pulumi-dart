// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificate.
class GetCertificateRdsArgs {
  /// When enabled, returns the default certificate for new RDS instances.
  final pulumi.Input<bool>? defaultForNewLaunches;

  /// Certificate identifier. For example, `rds-ca-2019`.
  final pulumi.Input<String>? id;

  /// When enabled, returns the certificate with the latest `ValidTill`.
  final pulumi.Input<bool>? latestValidTill;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetCertificateRdsArgs({
    this.defaultForNewLaunches,
    this.id,
    this.latestValidTill,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultForNewLaunchesValue = defaultForNewLaunches;
    if (defaultForNewLaunchesValue != null) {
      map['defaultForNewLaunches'] = defaultForNewLaunchesValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final latestValidTillValue = latestValidTill;
    if (latestValidTillValue != null) {
      map['latestValidTill'] = latestValidTillValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCertificateRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateRdsArgs(
      defaultForNewLaunches:
          pulumi.Input.asOptionalInput<bool>(map['defaultForNewLaunches']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      latestValidTill:
          pulumi.Input.asOptionalInput<bool>(map['latestValidTill']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
