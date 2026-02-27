// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_integration_kms_server_side_encryption/service_integration_kms_server_side_encryption.dart';
import '../service_integration_logs_anomaly_detection/service_integration_logs_anomaly_detection.dart';
import '../service_integration_ops_center/service_integration_ops_center.dart';

/// The set of arguments for ServiceIntegration.
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

  ServiceIntegrationArgs({
    required this.kmsServerSideEncryption,
    required this.logsAnomalyDetection,
    required this.opsCenter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsServerSideEncryption'] = pulumi.Input.mapInputValue<
            ServiceIntegrationKmsServerSideEncryption, Map<String, dynamic>>(
        kmsServerSideEncryption, (value) => value.toMap());
    map['logsAnomalyDetection'] = pulumi.Input.mapInputValue<
        ServiceIntegrationLogsAnomalyDetection,
        Map<String, dynamic>>(logsAnomalyDetection, (value) => value.toMap());
    map['opsCenter'] = pulumi.Input.mapInputValue<ServiceIntegrationOpsCenter,
        Map<String, dynamic>>(opsCenter, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ServiceIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationArgs(
      kmsServerSideEncryption:
          pulumi.Input.asInput<ServiceIntegrationKmsServerSideEncryption>(
              map['kmsServerSideEncryption']),
      logsAnomalyDetection:
          pulumi.Input.asInput<ServiceIntegrationLogsAnomalyDetection>(
              map['logsAnomalyDetection']),
      opsCenter:
          pulumi.Input.asInput<ServiceIntegrationOpsCenter>(map['opsCenter']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
