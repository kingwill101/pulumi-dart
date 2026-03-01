// ignore_for_file: unused_element, unnecessary_cast


/// The ssl configuration for scoring
class SslConfigurationResponse {
  /// Cert data
  final String? cert;
  /// CNAME of the cert
  final String? cname;
  /// Key data
  final String? key;
  /// Leaf domain label of public endpoint
  final String? leafDomainLabel;
  /// Indicates whether to overwrite existing domain label.
  final bool? overwriteExistingDomain;
  /// Enable or disable ssl for scoring
  final String? status;

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
      cert: map['cert'] == null ? null : map['cert'] as String,
      cname: map['cname'] == null ? null : map['cname'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      leafDomainLabel: map['leafDomainLabel'] == null ? null : map['leafDomainLabel'] as String,
      overwriteExistingDomain: map['overwriteExistingDomain'] == null ? null : map['overwriteExistingDomain'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

