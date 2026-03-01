// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_integration_kms_server_side_encryption.dart';
import 'service_integration_logs_anomaly_detection.dart';
import 'service_integration_ops_center.dart';

/// {@template pulumi_devopsguru_service_integration_service_integration_args_doc}
/// The set of arguments for ServiceIntegration.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_service_integration_service_integration_args_doc}
class ServiceIntegrationArgs {
  /// Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kms_server_side_encryption` below.
  final pulumi.Input<ServiceIntegrationKmsServerSideEncryption>
  kmsServerSideEncryption;

  /// Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logs_anomaly_detection` below.
  final pulumi.Input<ServiceIntegrationLogsAnomalyDetection>
  logsAnomalyDetection;

  /// Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `ops_center` below.
  final pulumi.Input<ServiceIntegrationOpsCenter> opsCenter;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ServiceIntegrationArgs].
  /// [kmsServerSideEncryption] Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kms_server_side_encryption` below.
  /// [logsAnomalyDetection] Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logs_anomaly_detection` below.
  /// [opsCenter] Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `ops_center` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ServiceIntegrationArgs({
    required ServiceIntegrationKmsServerSideEncryption kmsServerSideEncryption,
    required ServiceIntegrationLogsAnomalyDetection logsAnomalyDetection,
    required ServiceIntegrationOpsCenter opsCenter,
    String? region,
  }) : kmsServerSideEncryption =
           pulumi.Input.asInput<ServiceIntegrationKmsServerSideEncryption>(
             kmsServerSideEncryption,
           ),
       logsAnomalyDetection =
           pulumi.Input.asInput<ServiceIntegrationLogsAnomalyDetection>(
             logsAnomalyDetection,
           ),
       opsCenter = pulumi.Input.asInput<ServiceIntegrationOpsCenter>(opsCenter),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsServerSideEncryption':
          pulumi.Input.mapInputValue<
            ServiceIntegrationKmsServerSideEncryption,
            Map<String, dynamic>
          >(kmsServerSideEncryption, (value) => value.toMap()),
      'logsAnomalyDetection':
          pulumi.Input.mapInputValue<
            ServiceIntegrationLogsAnomalyDetection,
            Map<String, dynamic>
          >(logsAnomalyDetection, (value) => value.toMap()),
      'opsCenter':
          pulumi.Input.mapInputValue<
            ServiceIntegrationOpsCenter,
            Map<String, dynamic>
          >(opsCenter, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory ServiceIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationArgs(
      kmsServerSideEncryption:
          ServiceIntegrationKmsServerSideEncryption.fromMap(
            (map['kmsServerSideEncryption'] as Map).cast<String, dynamic>(),
          ),
      logsAnomalyDetection: ServiceIntegrationLogsAnomalyDetection.fromMap(
        (map['logsAnomalyDetection'] as Map).cast<String, dynamic>(),
      ),
      opsCenter: ServiceIntegrationOpsCenter.fromMap(
        (map['opsCenter'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
