// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_network_config_vpc_config.dart';

class DataQualityJobDefinitionNetworkConfig {
  /// Whether to encrypt all communications between the instances used for the monitoring jobs. Choose `true` to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
  final pulumi.Input<bool>? enableInterContainerTrafficEncryption;
  /// Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
  final pulumi.Input<bool>? enableNetworkIsolation;
  /// Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionNetworkConfigVpcConfig>? vpcConfig;

  /// Creates a new [DataQualityJobDefinitionNetworkConfig].
  /// [enableInterContainerTrafficEncryption] Whether to encrypt all communications between the instances used for the monitoring jobs. Choose `true` to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
  /// [enableNetworkIsolation] Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
  /// [vpcConfig] Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. Fields are documented below.
  const DataQualityJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInterContainerTrafficEncryption': ?enableInterContainerTrafficEncryption,
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionNetworkConfigVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionNetworkConfig(
      enableInterContainerTrafficEncryption: (() { final guardedValue = map['enableInterContainerTrafficEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkIsolation: (() { final guardedValue = map['enableNetworkIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionNetworkConfigVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

