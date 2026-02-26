import 'package:pulumi/pulumi.dart';
import 'certificate_authority_config_response.dart';
import 'certificate_issuance_config_args.dart';

/// Creates a new CertificateIssuanceConfig in a given project and location.
class CertificateIssuanceConfig extends CustomResource {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  late final Output<CertificateAuthorityConfigResponse>
      certificateAuthorityConfig;

  /// Required. A user-provided name of the certificate config.
  late final Output<String> certificateIssuanceConfigId;

  /// The creation timestamp of a CertificateIssuanceConfig.
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  late final Output<String> description;

  /// The key algorithm to use when generating the private key.
  late final Output<String> keyAlgorithm;

  /// Set of labels associated with a CertificateIssuanceConfig.
  late final Output<Map<String, String>> labels;

  /// Workload certificate lifetime requested.
  late final Output<String> lifetime;
  late final Output<String> location;

  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  late final Output<int> rotationWindowPercentage;

  /// The last update timestamp of a CertificateIssuanceConfig.
  late final Output<String> updateTime;

  CertificateIssuanceConfig(
    String name, {
    CertificateIssuanceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:CertificateIssuanceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateAuthorityConfig =
        Output.createUnknown<CertificateAuthorityConfigResponse>();
    this.certificateIssuanceConfigId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.keyAlgorithm = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lifetime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rotationWindowPercentage = Output.createUnknown<int>();
    this.updateTime = Output.createUnknown<String>();
  }
}
