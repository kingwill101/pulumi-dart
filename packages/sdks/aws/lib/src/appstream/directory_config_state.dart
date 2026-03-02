// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_config_certificate_based_auth_properties.dart';
import 'directory_config_service_account_credentials.dart';

/// Input properties used for looking up and filtering DirectoryConfig resources.
class DirectoryConfigState {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  final pulumi.Input<DirectoryConfigCertificateBasedAuthProperties>? certificateBasedAuthProperties;
  /// Date and time, in UTC and extended RFC 3339 format, when the directory config was created.
  final pulumi.Input<String>? createdTime;
  /// Fully qualified name of the directory.
  final pulumi.Input<String>? directoryName;
  /// Distinguished names of the organizational units for computer accounts.
  final pulumi.Input<List<String>>? organizationalUnitDistinguishedNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  final pulumi.Input<DirectoryConfigServiceAccountCredentials>? serviceAccountCredentials;

  /// Creates a new [DirectoryConfigState].
  /// [certificateBasedAuthProperties] Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the directory config was created.
  /// [directoryName] Fully qualified name of the directory.
  /// [organizationalUnitDistinguishedNames] Distinguished names of the organizational units for computer accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceAccountCredentials] Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  DirectoryConfigState({
    this.certificateBasedAuthProperties,
    this.createdTime,
    this.directoryName,
    this.organizationalUnitDistinguishedNames,
    this.region,
    this.serviceAccountCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBasedAuthProperties': ?pulumi.Input.mapOptionalInputValue<DirectoryConfigCertificateBasedAuthProperties, Map<String, dynamic>>(certificateBasedAuthProperties, (value) => value.toMap()),
      'createdTime': ?createdTime,
      'directoryName': ?directoryName,
      'organizationalUnitDistinguishedNames': ?organizationalUnitDistinguishedNames,
      'region': ?region,
      'serviceAccountCredentials': ?pulumi.Input.mapOptionalInputValue<DirectoryConfigServiceAccountCredentials, Map<String, dynamic>>(serviceAccountCredentials, (value) => value.toMap()),
    };
  }

  factory DirectoryConfigState.fromMap(Map<String, dynamic> map) {
    return DirectoryConfigState(
      certificateBasedAuthProperties: map['certificateBasedAuthProperties'] == null ? null : (DirectoryConfigCertificateBasedAuthProperties.fromMap((map['certificateBasedAuthProperties'] as Map).cast<String, dynamic>())).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      directoryName: map['directoryName'] == null ? null : (map['directoryName'] as String).input(),
      organizationalUnitDistinguishedNames: map['organizationalUnitDistinguishedNames'] == null ? null : ((map['organizationalUnitDistinguishedNames'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceAccountCredentials: map['serviceAccountCredentials'] == null ? null : (DirectoryConfigServiceAccountCredentials.fromMap((map['serviceAccountCredentials'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

