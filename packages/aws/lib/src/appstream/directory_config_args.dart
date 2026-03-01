// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_config_certificate_based_auth_properties.dart';
import 'directory_config_service_account_credentials.dart';

/// {@template pulumi_appstream_directory_config_directory_config_args_doc}
/// The set of arguments for DirectoryConfig.
/// {@endtemplate}
/// {@macro pulumi_appstream_directory_config_directory_config_args_doc}
class DirectoryConfigArgs {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  final pulumi.Input<DirectoryConfigCertificateBasedAuthProperties>? certificateBasedAuthProperties;
  /// Fully qualified name of the directory.
  final pulumi.Input<String> directoryName;
  /// Distinguished names of the organizational units for computer accounts.
  final pulumi.Input<List<String>> organizationalUnitDistinguishedNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  final pulumi.Input<DirectoryConfigServiceAccountCredentials> serviceAccountCredentials;

  /// Creates a new [DirectoryConfigArgs].
  /// [certificateBasedAuthProperties] Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  /// [directoryName] Fully qualified name of the directory.
  /// [organizationalUnitDistinguishedNames] Distinguished names of the organizational units for computer accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceAccountCredentials] Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  DirectoryConfigArgs({
    DirectoryConfigCertificateBasedAuthProperties? certificateBasedAuthProperties,
    required String directoryName,
    required List<String> organizationalUnitDistinguishedNames,
    String? region,
    required DirectoryConfigServiceAccountCredentials serviceAccountCredentials,
  }) :
      certificateBasedAuthProperties = pulumi.Input.asOptionalInput<DirectoryConfigCertificateBasedAuthProperties>(certificateBasedAuthProperties),
      directoryName = pulumi.Input.asInput<String>(directoryName),
      organizationalUnitDistinguishedNames = pulumi.Input.asInput<List<String>>(organizationalUnitDistinguishedNames),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceAccountCredentials = pulumi.Input.asInput<DirectoryConfigServiceAccountCredentials>(serviceAccountCredentials);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBasedAuthProperties': ?pulumi.Input.mapOptionalInputValue<DirectoryConfigCertificateBasedAuthProperties, Map<String, dynamic>>(certificateBasedAuthProperties, (value) => value.toMap()),
      'directoryName': directoryName,
      'organizationalUnitDistinguishedNames': organizationalUnitDistinguishedNames,
      'region': ?region,
      'serviceAccountCredentials': pulumi.Input.mapInputValue<DirectoryConfigServiceAccountCredentials, Map<String, dynamic>>(serviceAccountCredentials, (value) => value.toMap()),
    };
  }

  factory DirectoryConfigArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryConfigArgs(
      certificateBasedAuthProperties: map['certificateBasedAuthProperties'] == null ? null : DirectoryConfigCertificateBasedAuthProperties.fromMap((map['certificateBasedAuthProperties'] as Map).cast<String, dynamic>()),
      directoryName: map['directoryName'] as String,
      organizationalUnitDistinguishedNames: (map['organizationalUnitDistinguishedNames'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      serviceAccountCredentials: DirectoryConfigServiceAccountCredentials.fromMap((map['serviceAccountCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}

