import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_config_certificate_based_auth_properties/directory_config_certificate_based_auth_properties.dart';
import '../directory_config_service_account_credentials/directory_config_service_account_credentials.dart';
import 'directory_config_args.dart';

/// Provides an AppStream Directory Config.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.DirectoryConfig` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/directoryConfig:DirectoryConfig example directoryNameExample
/// ```
class DirectoryConfig extends pulumi.CustomResource {
  /// Configuration block for the certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP) user identities to Active Directory domain-joined streaming instances. See `certificate_based_auth_properties` below.
  late final pulumi.Output<DirectoryConfigCertificateBasedAuthProperties?>
      certificateBasedAuthProperties;

  /// Date and time, in UTC and extended RFC 3339 format, when the directory config was created.
  late final pulumi.Output<String> createdTime;

  /// Fully qualified name of the directory.
  late final pulumi.Output<String> directoryName;

  /// Distinguished names of the organizational units for computer accounts.
  late final pulumi.Output<List<String>> organizationalUnitDistinguishedNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the directory config to a Microsoft Active Directory domain. See `service_account_credentials` below.
  late final pulumi.Output<DirectoryConfigServiceAccountCredentials>
      serviceAccountCredentials;

  DirectoryConfig(
    String name, {
    DirectoryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/directoryConfig:DirectoryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateBasedAuthProperties =
        registerOutput<DirectoryConfigCertificateBasedAuthProperties?>(
            'certificateBasedAuthProperties');
    this.createdTime = registerOutput<String>('createdTime');
    this.directoryName = registerOutput<String>('directoryName');
    this.organizationalUnitDistinguishedNames =
        registerOutput<List<String>>('organizationalUnitDistinguishedNames');
    this.region = registerOutput<String>('region');
    this.serviceAccountCredentials =
        registerOutput<DirectoryConfigServiceAccountCredentials>(
            'serviceAccountCredentials');
  }
}
