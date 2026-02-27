import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_integration_kms_server_side_encryption/service_integration_kms_server_side_encryption.dart';
import '../service_integration_logs_anomaly_detection/service_integration_logs_anomaly_detection.dart';
import '../service_integration_ops_center/service_integration_ops_center.dart';
import 'service_integration_args.dart';

/// Resource for managing an AWS DevOps Guru Service Integration.
///
/// > To prevent unintentional deletion of account wide settings, destruction of this resource will only remove it from the Terraform state. To disable any configured settings, explicitly set the opt-in value to `DISABLED` and apply again before destroying.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Customer Managed KMS Key
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Service Integration using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/serviceIntegration:ServiceIntegration example us-east-1
/// ```
class ServiceIntegration extends pulumi.CustomResource {
  /// Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kms_server_side_encryption` below.
  late final pulumi.Output<ServiceIntegrationKmsServerSideEncryption>
      kmsServerSideEncryption;

  /// Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logs_anomaly_detection` below.
  late final pulumi.Output<ServiceIntegrationLogsAnomalyDetection>
      logsAnomalyDetection;

  /// Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `ops_center` below.
  late final pulumi.Output<ServiceIntegrationOpsCenter> opsCenter;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ServiceIntegration(
    String name, {
    ServiceIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/serviceIntegration:ServiceIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.kmsServerSideEncryption =
        registerOutput<ServiceIntegrationKmsServerSideEncryption>(
            'kmsServerSideEncryption');
    this.logsAnomalyDetection =
        registerOutput<ServiceIntegrationLogsAnomalyDetection>(
            'logsAnomalyDetection');
    this.opsCenter = registerOutput<ServiceIntegrationOpsCenter>('opsCenter');
    this.region = registerOutput<String>('region');
  }
}
