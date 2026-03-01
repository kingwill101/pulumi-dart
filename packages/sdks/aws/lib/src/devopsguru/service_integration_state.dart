// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_integration_kms_server_side_encryption.dart';
import 'service_integration_logs_anomaly_detection.dart';
import 'service_integration_ops_center.dart';

/// Input properties used for looking up and filtering ServiceIntegration resources.
class ServiceIntegrationState {
  /// Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kms_server_side_encryption` below.
  final pulumi.Input<ServiceIntegrationKmsServerSideEncryption>? kmsServerSideEncryption;
  /// Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logs_anomaly_detection` below.
  final pulumi.Input<ServiceIntegrationLogsAnomalyDetection>? logsAnomalyDetection;
  /// Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `ops_center` below.
  final pulumi.Input<ServiceIntegrationOpsCenter>? opsCenter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ServiceIntegrationState].
  /// [kmsServerSideEncryption] Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kms_server_side_encryption` below.
  /// [logsAnomalyDetection] Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logs_anomaly_detection` below.
  /// [opsCenter] Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `ops_center` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ServiceIntegrationState({
    pulumi.Output<ServiceIntegrationKmsServerSideEncryption>? kmsServerSideEncryption,
    pulumi.Output<ServiceIntegrationLogsAnomalyDetection>? logsAnomalyDetection,
    pulumi.Output<ServiceIntegrationOpsCenter>? opsCenter,
    pulumi.Output<String>? region,
  }) :
      kmsServerSideEncryption = pulumi.Input.asOptionalInput<ServiceIntegrationKmsServerSideEncryption>(kmsServerSideEncryption),
      logsAnomalyDetection = pulumi.Input.asOptionalInput<ServiceIntegrationLogsAnomalyDetection>(logsAnomalyDetection),
      opsCenter = pulumi.Input.asOptionalInput<ServiceIntegrationOpsCenter>(opsCenter),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsServerSideEncryption': ?pulumi.Input.mapOptionalInputValue<ServiceIntegrationKmsServerSideEncryption, Map<String, dynamic>>(kmsServerSideEncryption, (value) => value.toMap()),
      'logsAnomalyDetection': ?pulumi.Input.mapOptionalInputValue<ServiceIntegrationLogsAnomalyDetection, Map<String, dynamic>>(logsAnomalyDetection, (value) => value.toMap()),
      'opsCenter': ?pulumi.Input.mapOptionalInputValue<ServiceIntegrationOpsCenter, Map<String, dynamic>>(opsCenter, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory ServiceIntegrationState.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationState(
      kmsServerSideEncryption: map['kmsServerSideEncryption'] == null ? null : pulumi.Output.create<ServiceIntegrationKmsServerSideEncryption>(ServiceIntegrationKmsServerSideEncryption.fromMap((map['kmsServerSideEncryption'] as Map).cast<String, dynamic>())),
      logsAnomalyDetection: map['logsAnomalyDetection'] == null ? null : pulumi.Output.create<ServiceIntegrationLogsAnomalyDetection>(ServiceIntegrationLogsAnomalyDetection.fromMap((map['logsAnomalyDetection'] as Map).cast<String, dynamic>())),
      opsCenter: map['opsCenter'] == null ? null : pulumi.Output.create<ServiceIntegrationOpsCenter>(ServiceIntegrationOpsCenter.fromMap((map['opsCenter'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

