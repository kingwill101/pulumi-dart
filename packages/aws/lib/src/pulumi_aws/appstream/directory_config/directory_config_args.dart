// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_config_certificate_based_auth_properties/directory_config_certificate_based_auth_properties.dart';
import '../directory_config_service_account_credentials/directory_config_service_account_credentials.dart';

/// The set of arguments for DirectoryConfig.
class DirectoryConfigArgs {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  final pulumi.Input<DirectoryConfigCertificateBasedAuthProperties>?
      certificateBasedAuthProperties;

  /// Fully qualified name of the directory.
  final pulumi.Input<String> directoryName;

  /// Distinguished names of the organizational units for computer accounts.
  final pulumi.Input<List<String>> organizationalUnitDistinguishedNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  final pulumi.Input<DirectoryConfigServiceAccountCredentials>
      serviceAccountCredentials;

  DirectoryConfigArgs({
    this.certificateBasedAuthProperties,
    required this.directoryName,
    required this.organizationalUnitDistinguishedNames,
    this.region,
    required this.serviceAccountCredentials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateBasedAuthPropertiesValue = certificateBasedAuthProperties;
    if (certificateBasedAuthPropertiesValue != null) {
      map['certificateBasedAuthProperties'] =
          pulumi.Input.mapOptionalInputValue<
                  DirectoryConfigCertificateBasedAuthProperties,
                  Map<String, dynamic>>(
              certificateBasedAuthPropertiesValue, (value) => value.toMap());
    }
    map['directoryName'] = directoryName;
    map['organizationalUnitDistinguishedNames'] =
        organizationalUnitDistinguishedNames;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceAccountCredentials'] = pulumi.Input.mapInputValue<
            DirectoryConfigServiceAccountCredentials, Map<String, dynamic>>(
        serviceAccountCredentials, (value) => value.toMap());
    return map;
  }

  factory DirectoryConfigArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryConfigArgs(
      certificateBasedAuthProperties: pulumi.Input.asOptionalInput<
              DirectoryConfigCertificateBasedAuthProperties>(
          map['certificateBasedAuthProperties']),
      directoryName: pulumi.Input.asInput<String>(map['directoryName']),
      organizationalUnitDistinguishedNames: pulumi.Input.asInput<List<String>>(
          map['organizationalUnitDistinguishedNames']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceAccountCredentials:
          pulumi.Input.asInput<DirectoryConfigServiceAccountCredentials>(
              map['serviceAccountCredentials']),
    );
  }
}
