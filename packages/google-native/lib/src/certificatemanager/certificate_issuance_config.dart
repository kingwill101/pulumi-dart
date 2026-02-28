import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_config_response.dart';
import 'certificate_issuance_config_args.dart';

/// Creates a new CertificateIssuanceConfig in a given project and location.
class CertificateIssuanceConfig extends pulumi.CustomResource {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  late final pulumi.Output<CertificateAuthorityConfigResponse>
      certificateAuthorityConfig;

  /// Required. A user-provided name of the certificate config.
  late final pulumi.Output<String> certificateIssuanceConfigId;

  /// The creation timestamp of a CertificateIssuanceConfig.
  late final pulumi.Output<String> createTime;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  late final pulumi.Output<String> description;

  /// The key algorithm to use when generating the private key.
  late final pulumi.Output<String> keyAlgorithm;

  /// Set of labels associated with a CertificateIssuanceConfig.
  late final pulumi.Output<Map<String, String>> labels;

  /// Workload certificate lifetime requested.
  late final pulumi.Output<String> lifetime;
  late final pulumi.Output<String> location;

  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  late final pulumi.Output<int> rotationWindowPercentage;

  /// The last update timestamp of a CertificateIssuanceConfig.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateIssuanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateIssuanceConfig]. {@macro pulumi_certificatemanager_v1_certificate_issuance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateIssuanceConfig(
    String name, {
    CertificateIssuanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:CertificateIssuanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateAuthorityConfig =
        registerOutput<CertificateAuthorityConfigResponse>(
            'certificateAuthorityConfig');
    this.certificateIssuanceConfigId =
        registerOutput<String>('certificateIssuanceConfigId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.keyAlgorithm = registerOutput<String>('keyAlgorithm');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lifetime = registerOutput<String>('lifetime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rotationWindowPercentage =
        registerOutput<int>('rotationWindowPercentage');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
