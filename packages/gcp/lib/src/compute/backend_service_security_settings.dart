// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_security_settings_aws_v4_authentication.dart';

class BackendServiceSecuritySettings {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_security_settings_aws_v4_authentication"></a>The `aws_v4_authentication` block supports:
  final BackendServiceSecuritySettingsAwsV4Authentication? awsV4Authentication;
  /// ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// connections to backends of a service. This resource itself does not affect
  /// configuration unless it is attached to a backend service resource.
  final String? clientTlsPolicy;
  /// A list of alternate names to verify the subject identity in the certificate.
  /// If specified, the client will verify that the server certificate's subject
  /// alt name matches one of the specified values.
  final List<String>? subjectAltNames;

  /// Creates a new [BackendServiceSecuritySettings].
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// [clientTlsPolicy] ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate.
  BackendServiceSecuritySettings({
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsV4Authentication': ?awsV4Authentication == null ? null : awsV4Authentication!.toMap(),
      'clientTlsPolicy': ?clientTlsPolicy,
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory BackendServiceSecuritySettings.fromMap(Map<String, dynamic> map) {
    return BackendServiceSecuritySettings(
      awsV4Authentication: map['awsV4Authentication'] == null ? null : BackendServiceSecuritySettingsAwsV4Authentication.fromMap((map['awsV4Authentication'] as Map).cast<String, dynamic>()),
      clientTlsPolicy: map['clientTlsPolicy'] == null ? null : map['clientTlsPolicy'] as String,
      subjectAltNames: map['subjectAltNames'] == null ? null : (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}

