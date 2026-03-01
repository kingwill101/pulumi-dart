// ignore_for_file: unused_element, unnecessary_cast


class ClusterApplicationConfig {
  /// The application name of EMR cluster which has installed.
  final String applicationName;
  /// The configuration description of application installed.
  final String? configDescription;
  /// The configuration file name of application installed.
  final String configFileName;
  /// The configuration item key of application installed.
  final String configItemKey;
  /// The configuration item value of application installed.
  final String configItemValue;
  /// The configuration scope of emr cluster. Supported value: CLUSTER or NODEGROUP.
  final String? configScope;
  /// The configuration effected which node group id of emr cluster.
  final String? nodeGroupId;
  /// The configuration effected which node group name of emr cluster.
  final String? nodeGroupName;

  /// Creates a new [ClusterApplicationConfig].
  /// [applicationName] The application name of EMR cluster which has installed.
  /// [configDescription] The configuration description of application installed.
  /// [configFileName] The configuration file name of application installed.
  /// [configItemKey] The configuration item key of application installed.
  /// [configItemValue] The configuration item value of application installed.
  /// [configScope] The configuration scope of emr cluster. Supported value: CLUSTER or NODEGROUP.
  /// [nodeGroupId] The configuration effected which node group id of emr cluster.
  /// [nodeGroupName] The configuration effected which node group name of emr cluster.
  ClusterApplicationConfig({
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
      applicationName: map['applicationName'] as String,
      configDescription: map['configDescription'] == null ? null : map['configDescription'] as String,
      configFileName: map['configFileName'] as String,
      configItemKey: map['configItemKey'] as String,
      configItemValue: map['configItemValue'] as String,
      configScope: map['configScope'] == null ? null : map['configScope'] as String,
      nodeGroupId: map['nodeGroupId'] == null ? null : map['nodeGroupId'] as String,
      nodeGroupName: map['nodeGroupName'] == null ? null : map['nodeGroupName'] as String,
    );
  }
}

