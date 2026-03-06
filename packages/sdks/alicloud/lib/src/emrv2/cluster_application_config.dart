// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterApplicationConfig {
  /// The application name of EMR cluster which has installed.
  final pulumi.Input<String> applicationName;
  /// The configuration description of application installed.
  final pulumi.Input<String>? configDescription;
  /// The configuration file name of application installed.
  final pulumi.Input<String> configFileName;
  /// The configuration item key of application installed.
  final pulumi.Input<String> configItemKey;
  /// The configuration item value of application installed.
  final pulumi.Input<String> configItemValue;
  /// The configuration scope of emr cluster. Supported value: CLUSTER or NODEGROUP.
  final pulumi.Input<String>? configScope;
  /// The configuration effected which node group id of emr cluster.
  final pulumi.Input<String>? nodeGroupId;
  /// The configuration effected which node group name of emr cluster.
  final pulumi.Input<String>? nodeGroupName;

  /// Creates a new [ClusterApplicationConfig].
  /// [applicationName] The application name of EMR cluster which has installed.
  /// [configDescription] The configuration description of application installed.
  /// [configFileName] The configuration file name of application installed.
  /// [configItemKey] The configuration item key of application installed.
  /// [configItemValue] The configuration item value of application installed.
  /// [configScope] The configuration scope of emr cluster. Supported value: CLUSTER or NODEGROUP.
  /// [nodeGroupId] The configuration effected which node group id of emr cluster.
  /// [nodeGroupName] The configuration effected which node group name of emr cluster.
  const ClusterApplicationConfig({
    required this.applicationName,
    this.configDescription,
    required this.configFileName,
    required this.configItemKey,
    required this.configItemValue,
    this.configScope,
    this.nodeGroupId,
    this.nodeGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'configDescription': ?configDescription,
      'configFileName': configFileName,
      'configItemKey': configItemKey,
      'configItemValue': configItemValue,
      'configScope': ?configScope,
      'nodeGroupId': ?nodeGroupId,
      'nodeGroupName': ?nodeGroupName,
    };
  }

  factory ClusterApplicationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterApplicationConfig(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      configDescription: (() { final guardedValue = map['configDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configFileName: pulumi.Input.fromValue(map['configFileName'] as String),
      configItemKey: pulumi.Input.fromValue(map['configItemKey'] as String),
      configItemValue: pulumi.Input.fromValue(map['configItemValue'] as String),
      configScope: (() { final guardedValue = map['configScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupName: (() { final guardedValue = map['nodeGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

