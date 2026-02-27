// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_security_setting_aws_v4_authentication/get_backend_service_security_setting_aws_v4_authentication.dart';

class GetBackendServiceSecuritySetting {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final List<GetBackendServiceSecuritySettingAwsV4Authentication>
      awsV4Authentications;

  /// ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// connections to backends of a service. This resource itself does not affect
  /// configuration unless it is attached to a backend service resource.
  final String clientTlsPolicy;

  /// A list of alternate names to verify the subject identity in the certificate.
  /// If specified, the client will verify that the server certificate's subject
  /// alt name matches one of the specified values.
  final List<String> subjectAltNames;

  GetBackendServiceSecuritySetting({
    required this.awsV4Authentications,
    required this.clientTlsPolicy,
    required this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsV4Authentications'] = pulumi.Input.encodeList<
        GetBackendServiceSecuritySettingAwsV4Authentication,
        Map<String, dynamic>>(awsV4Authentications, (value) => value.toMap());
    map['clientTlsPolicy'] = clientTlsPolicy;
    map['subjectAltNames'] = subjectAltNames;
    return map;
  }

  factory GetBackendServiceSecuritySetting.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceSecuritySetting(
      awsV4Authentications: pulumi.Input.decodeList<
              GetBackendServiceSecuritySettingAwsV4Authentication>(
          map['awsV4Authentications'],
          (value) =>
              GetBackendServiceSecuritySettingAwsV4Authentication.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientTlsPolicy: map['clientTlsPolicy'] as String,
      subjectAltNames: (map['subjectAltNames'] as List).cast<String>(),
    );
  }
}
