import 'package:pulumi/pulumi.dart' hide Config;
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
