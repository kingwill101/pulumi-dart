// ignore_for_file: unused_element, unnecessary_cast

import 'data_quality_job_definition_network_config_vpc_config.dart';

class DataQualityJobDefinitionNetworkConfig {
  /// Whether to encrypt all communications between the instances used for the monitoring jobs. Choose `true` to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
  final bool? enableInterContainerTrafficEncryption;

  /// Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
  final bool? enableNetworkIsolation;

  /// Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. Fields are documented below.
  final DataQualityJobDefinitionNetworkConfigVpcConfig? vpcConfig;

  /// Creates a new [DataQualityJobDefinitionNetworkConfig].
  /// [enableInterContainerTrafficEncryption] Whether to encrypt all communications between the instances used for the monitoring jobs. Choose `true` to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
  /// [enableNetworkIsolation] Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
  /// [vpcConfig] Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. Fields are documented below.
  DataQualityJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableInterContainerTrafficEncryptionValue =
        enableInterContainerTrafficEncryption;
    if (enableInterContainerTrafficEncryptionValue != null) {
      map['enableInterContainerTrafficEncryption'] =
          enableInterContainerTrafficEncryptionValue;
    }
    final enableNetworkIsolationValue = enableNetworkIsolation;
    if (enableNetworkIsolationValue != null) {
      map['enableNetworkIsolation'] = enableNetworkIsolationValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory DataQualityJobDefinitionNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionNetworkConfig(
      enableInterContainerTrafficEncryption:
          map['enableInterContainerTrafficEncryption'] == null
              ? null
              : map['enableInterContainerTrafficEncryption'] as bool,
      enableNetworkIsolation: map['enableNetworkIsolation'] == null
          ? null
          : map['enableNetworkIsolation'] as bool,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : DataQualityJobDefinitionNetworkConfigVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
