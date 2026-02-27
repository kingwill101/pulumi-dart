import 'package:pulumi/pulumi.dart';
import '../tls_inspection_configuration_certificate/tls_inspection_configuration_certificate.dart';
import '../tls_inspection_configuration_certificate_authority/tls_inspection_configuration_certificate_authority.dart';
import '../tls_inspection_configuration_encryption_configuration/tls_inspection_configuration_encryption_configuration.dart';
import '../tls_inspection_configuration_timeouts/tls_inspection_configuration_timeouts.dart';
import '../tls_inspection_configuration_tls_inspection_configuration/tls_inspection_configuration_tls_inspection_configuration.dart';
import 'tls_inspection_configuration_args.dart';

/// Resource for managing an AWS Network Firewall TLS Inspection Configuration.
///
/// ## Example Usage
///
/// > **NOTE:** You must configure either inbound inspection, outbound inspection, or both.
///
/// ### Basic inbound/ingress inspection
///
///
///
/// ### Basic outbound/engress inspection
///
///
///
/// ### Inbound with encryption configuration
///
///
///
/// ### Outbound with encryption configuration
///
///
///
/// ### Combined inbound and outbound
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Network Firewall TLS inspection configuration.
///
///
/// Using `pulumi import`, import Network Firewall TLS Inspection Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration example arn:aws:network-firewall::<region>:<account_id>:tls-configuration/example
/// ```
class TlsInspectionConfiguration extends CustomResource {
  /// ARN of the TLS Inspection Configuration.
  late final Output<String> arn;

  /// Certificate Manager certificate block. See Certificate Authority below for details.
  late final Output<List<TlsInspectionConfigurationCertificateAuthority>>
      certificateAuthorities;

  /// List of certificate blocks describing certificates associated with the TLS inspection configuration. See Certificates below for details.
  late final Output<List<TlsInspectionConfigurationCertificate>> certificates;

  /// Description of the TLS inspection configuration.
  late final Output<String?> description;

  /// Encryption configuration block. Detailed below.
  late final Output<List<TlsInspectionConfigurationEncryptionConfiguration>>
      encryptionConfigurations;

  /// Descriptive name of the TLS inspection configuration.
  late final Output<String> name;

  /// Number of firewall policies that use this TLS inspection configuration.
  late final Output<int> numberOfAssociations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<TlsInspectionConfigurationTimeouts?> timeouts;

  /// TLS inspection configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<TlsInspectionConfigurationTlsInspectionConfiguration>
      tlsInspectionConfiguration;

  /// A unique identifier for the TLS inspection configuration.
  late final Output<String> tlsInspectionConfigurationId;

  /// String token used when updating the rule group.
  late final Output<String> updateToken;

  TlsInspectionConfiguration(
    String name, {
    TlsInspectionConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificateAuthorities =
        registerOutput<List<TlsInspectionConfigurationCertificateAuthority>>(
            'certificateAuthorities');
    this.certificates =
        registerOutput<List<TlsInspectionConfigurationCertificate>>(
            'certificates');
    this.description = registerOutput<String?>('description');
    this.encryptionConfigurations =
        registerOutput<List<TlsInspectionConfigurationEncryptionConfiguration>>(
            'encryptionConfigurations');
    this.name = registerOutput<String>('name');
    this.numberOfAssociations = registerOutput<int>('numberOfAssociations');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<TlsInspectionConfigurationTimeouts?>('timeouts');
    this.tlsInspectionConfiguration =
        registerOutput<TlsInspectionConfigurationTlsInspectionConfiguration>(
            'tlsInspectionConfiguration');
    this.tlsInspectionConfigurationId =
        registerOutput<String>('tlsInspectionConfigurationId');
    this.updateToken = registerOutput<String>('updateToken');
  }
}
