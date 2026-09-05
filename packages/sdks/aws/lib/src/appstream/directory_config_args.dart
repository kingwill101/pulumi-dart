// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_config_certificate_based_auth_properties.dart';
import 'directory_config_service_account_credentials.dart';

/// {@template pulumi_appstream_directory_config_directory_config_args_doc}
/// The set of arguments for DirectoryConfig.
/// {@endtemplate}
/// {@macro pulumi_appstream_directory_config_directory_config_args_doc}
class DirectoryConfigArgs {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificateBasedAuthProperties` below.
  final pulumi.Input<DirectoryConfigCertificateBasedAuthProperties?>? certificateBasedAuthProperties;
  /// Fully qualified name of the directory.
  final pulumi.Input<String> directoryName;
  /// Distinguished names of the organizational units for computer accounts.
  final pulumi.Input<List<String>> organizationalUnitDistinguishedNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `serviceAccountCredentials` below.
  final pulumi.Input<DirectoryConfigServiceAccountCredentials> serviceAccountCredentials;

  /// Creates a new [DirectoryConfigArgs].
  /// [certificateBasedAuthProperties] Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificateBasedAuthProperties` below.
  /// [directoryName] Fully qualified name of the directory.
  /// [organizationalUnitDistinguishedNames] Distinguished names of the organizational units for computer accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceAccountCredentials] Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `serviceAccountCredentials` below.
  const DirectoryConfigArgs({
    this.certificateBasedAuthProperties,
    required this.directoryName,
    required this.organizationalUnitDistinguishedNames,
    this.region,
    required this.serviceAccountCredentials,
  });

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
      certificateBasedAuthProperties: (() { final guardedValue = map['certificateBasedAuthProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryConfigCertificateBasedAuthProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directoryName: pulumi.Input.fromValue(map['directoryName'] as String),
      organizationalUnitDistinguishedNames: pulumi.Input.fromValue((map['organizationalUnitDistinguishedNames'] as List).cast<String>()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountCredentials: pulumi.Input.fromValue(DirectoryConfigServiceAccountCredentials.fromMap((map['serviceAccountCredentials']! as Map).cast<String, dynamic>())),
    );
  }
}
