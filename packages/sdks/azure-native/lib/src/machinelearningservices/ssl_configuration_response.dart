// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ssl configuration for scoring
class SslConfigurationResponse {
  /// Cert data
  final pulumi.Input<String>? cert;
  /// CNAME of the cert
  final pulumi.Input<String>? cname;
  /// Key data
  final pulumi.Input<String>? key;
  /// Leaf domain label of public endpoint
  final pulumi.Input<String>? leafDomainLabel;
  /// Indicates whether to overwrite existing domain label.
  final pulumi.Input<bool>? overwriteExistingDomain;
  /// Enable or disable ssl for scoring
  final pulumi.Input<String>? status;

  /// Creates a new [SslConfigurationResponse].
  /// [cert] Cert data
  /// [cname] CNAME of the cert
  /// [key] Key data
  /// [leafDomainLabel] Leaf domain label of public endpoint
  /// [overwriteExistingDomain] Indicates whether to overwrite existing domain label.
  /// [status] Enable or disable ssl for scoring
  SslConfigurationResponse({
    this.cert,
    this.cname,
    this.key,
    this.leafDomainLabel,
    this.overwriteExistingDomain,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'cname': ?cname,
      'key': ?key,
      'leafDomainLabel': ?leafDomainLabel,
      'overwriteExistingDomain': ?overwriteExistingDomain,
      'status': ?status,
    };
  }

  factory SslConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SslConfigurationResponse(
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      cname: map['cname'] == null ? null : (map['cname']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      leafDomainLabel: map['leafDomainLabel'] == null ? null : (map['leafDomainLabel']! as String).input(),
      overwriteExistingDomain: map['overwriteExistingDomain'] == null ? null : (map['overwriteExistingDomain']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

