// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_integration_kms_server_side_encryption/service_integration_kms_server_side_encryption.dart';
import '../service_integration_logs_anomaly_detection/service_integration_logs_anomaly_detection.dart';
import '../service_integration_ops_center/service_integration_ops_center.dart';

/// The set of arguments for ServiceIntegration.
class ServiceIntegrationArgs {
  /// Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See <span pulumi-lang-nodejs="`kmsServerSideEncryption`" pulumi-lang-dotnet="`KmsServerSideEncryption`" pulumi-lang-go="`kmsServerSideEncryption`" pulumi-lang-python="`kms_server_side_encryption`" pulumi-lang-yaml="`kmsServerSideEncryption`" pulumi-lang-java="`kmsServerSideEncryption`">`kms_server_side_encryption`</span> below.
  final Input<ServiceIntegrationKmsServerSideEncryption>
      kmsServerSideEncryption;

  /// Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See <span pulumi-lang-nodejs="`logsAnomalyDetection`" pulumi-lang-dotnet="`LogsAnomalyDetection`" pulumi-lang-go="`logsAnomalyDetection`" pulumi-lang-python="`logs_anomaly_detection`" pulumi-lang-yaml="`logsAnomalyDetection`" pulumi-lang-java="`logsAnomalyDetection`">`logs_anomaly_detection`</span> below.
  final Input<ServiceIntegrationLogsAnomalyDetection> logsAnomalyDetection;

  /// Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See <span pulumi-lang-nodejs="`opsCenter`" pulumi-lang-dotnet="`OpsCenter`" pulumi-lang-go="`opsCenter`" pulumi-lang-python="`ops_center`" pulumi-lang-yaml="`opsCenter`" pulumi-lang-java="`opsCenter`">`ops_center`</span> below.
  final Input<ServiceIntegrationOpsCenter> opsCenter;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ServiceIntegrationArgs({
    required this.kmsServerSideEncryption,
    required this.logsAnomalyDetection,
    required this.opsCenter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsServerSideEncryption'] = Input.mapInputValue<
            ServiceIntegrationKmsServerSideEncryption, Map<String, dynamic>>(
        kmsServerSideEncryption, (value) => value.toMap());
    map['logsAnomalyDetection'] = Input.mapInputValue<
        ServiceIntegrationLogsAnomalyDetection,
        Map<String, dynamic>>(logsAnomalyDetection, (value) => value.toMap());
    map['opsCenter'] =
        Input.mapInputValue<ServiceIntegrationOpsCenter, Map<String, dynamic>>(
            opsCenter, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ServiceIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationArgs(
      kmsServerSideEncryption:
          Input.asInput<ServiceIntegrationKmsServerSideEncryption>(
              map['kmsServerSideEncryption']),
      logsAnomalyDetection:
          Input.asInput<ServiceIntegrationLogsAnomalyDetection>(
              map['logsAnomalyDetection']),
      opsCenter: Input.asInput<ServiceIntegrationOpsCenter>(map['opsCenter']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
