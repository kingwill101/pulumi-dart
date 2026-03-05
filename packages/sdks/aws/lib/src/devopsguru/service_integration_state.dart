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
    this.kmsServerSideEncryption,
    this.logsAnomalyDetection,
    this.opsCenter,
    this.region,
  });

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
      kmsServerSideEncryption: (() { final guardedValue = map['kmsServerSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIntegrationKmsServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsAnomalyDetection: (() { final guardedValue = map['logsAnomalyDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIntegrationLogsAnomalyDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      opsCenter: (() { final guardedValue = map['opsCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIntegrationOpsCenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

