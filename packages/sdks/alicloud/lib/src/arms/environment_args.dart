// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_arms_environment_environment_args_doc}
class EnvironmentArgs {
  /// The locale. The default is Chinese zh | en.
  final pulumi.Input<String>? aliyunLang;
  /// The id or vpcId of the bound container instance.
  final pulumi.Input<String>? bindResourceId;
  /// List of abandoned indicators.
  final pulumi.Input<String>? dropMetrics;
  /// The name of the resource.
  final pulumi.Input<String>? environmentName;
  /// Subtype of environment:
  /// - Type of CS: ACK is currently supported. ManagedKubernetes, Kubernetes, ExternalKubernetes, and One are also supported.
  /// - Type of ECS: currently supports ECS.
  /// - Type of Cloud: currently supports Cloud.
  final pulumi.Input<String> environmentSubType;
  /// Type of environment.
  final pulumi.Input<String> environmentType;
  /// Hosting type:
  /// - none: unmanaged. The default value of the ACK cluster.
  /// - agent: Managed agent (including ksm). Default values of ASK, ACS, and Acone clusters.
  /// - agent-exproter: Managed agent and exporter. The default value of the cloud service type.
  final pulumi.Input<String>? managedType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentArgs].
  /// [aliyunLang] The locale. The default is Chinese zh | en.
  /// [bindResourceId] The id or vpcId of the bound container instance.
  /// [dropMetrics] List of abandoned indicators.
  /// [environmentName] The name of the resource.
  /// [environmentSubType] Subtype of environment:
  /// [environmentType] Type of environment.
  /// [managedType] Hosting type:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  EnvironmentArgs({
    this.aliyunLang,
    this.bindResourceId,
    this.dropMetrics,
    this.environmentName,
    required this.environmentSubType,
    required this.environmentType,
    this.managedType,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': ?aliyunLang,
      'bindResourceId': ?bindResourceId,
      'dropMetrics': ?dropMetrics,
      'environmentName': ?environmentName,
      'environmentSubType': environmentSubType,
      'environmentType': environmentType,
      'managedType': ?managedType,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang']! as String).input(),
      bindResourceId: map['bindResourceId'] == null ? null : (map['bindResourceId']! as String).input(),
      dropMetrics: map['dropMetrics'] == null ? null : (map['dropMetrics']! as String).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName']! as String).input(),
      environmentSubType: (map['environmentSubType'] as String).input(),
      environmentType: (map['environmentType'] as String).input(),
      managedType: map['managedType'] == null ? null : (map['managedType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

