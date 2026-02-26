// ignore_for_file: unused_element, unnecessary_cast

import '../backend_service_security_settings_aws_v4_authentication/backend_service_security_settings_aws_v4_authentication.dart';

class BackendServiceSecuritySettings {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedSecuritySettingsAwsV4Authentication"" pulumi-lang-dotnet=""NestedSecuritySettingsAwsV4Authentication"" pulumi-lang-go=""nestedSecuritySettingsAwsV4Authentication"" pulumi-lang-python=""nested_security_settings_aws_v4_authentication"" pulumi-lang-yaml=""nestedSecuritySettingsAwsV4Authentication"" pulumi-lang-java=""nestedSecuritySettingsAwsV4Authentication"">"nested_security_settings_aws_v4_authentication"</span>></a>The <span pulumi-lang-nodejs="`awsV4Authentication`" pulumi-lang-dotnet="`AwsV4Authentication`" pulumi-lang-go="`awsV4Authentication`" pulumi-lang-python="`aws_v4_authentication`" pulumi-lang-yaml="`awsV4Authentication`" pulumi-lang-java="`awsV4Authentication`">`aws_v4_authentication`</span> block supports:
  final BackendServiceSecuritySettingsAwsV4Authentication? awsV4Authentication;

  /// ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// connections to backends of a service. This resource itself does not affect
  /// configuration unless it is attached to a backend service resource.
  final String? clientTlsPolicy;

  /// A list of alternate names to verify the subject identity in the certificate.
  /// If specified, the client will verify that the server certificate's subject
  /// alt name matches one of the specified values.
  final List<String>? subjectAltNames;

  BackendServiceSecuritySettings({
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsV4AuthenticationValue = awsV4Authentication;
    if (awsV4AuthenticationValue != null) {
      map['awsV4Authentication'] = awsV4AuthenticationValue.toMap();
    }
    final clientTlsPolicyValue = clientTlsPolicy;
    if (clientTlsPolicyValue != null) {
      map['clientTlsPolicy'] = clientTlsPolicyValue;
    }
    final subjectAltNamesValue = subjectAltNames;
    if (subjectAltNamesValue != null) {
      map['subjectAltNames'] = subjectAltNamesValue;
    }
    return map;
  }

  factory BackendServiceSecuritySettings.fromMap(Map<String, dynamic> map) {
    return BackendServiceSecuritySettings(
      awsV4Authentication: map['awsV4Authentication'] == null
          ? null
          : BackendServiceSecuritySettingsAwsV4Authentication.fromMap(
              (map['awsV4Authentication'] as Map).cast<String, dynamic>()),
      clientTlsPolicy: map['clientTlsPolicy'] == null
          ? null
          : map['clientTlsPolicy'] as String,
      subjectAltNames: map['subjectAltNames'] == null
          ? null
          : (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}
