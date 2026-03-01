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
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<String>? bindResourceId,
    pulumi.Output<String>? dropMetrics,
    pulumi.Output<String>? environmentName,
    required pulumi.Output<String> environmentSubType,
    required pulumi.Output<String> environmentType,
    pulumi.Output<String>? managedType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      bindResourceId = pulumi.Input.asOptionalInput<String>(bindResourceId),
      dropMetrics = pulumi.Input.asOptionalInput<String>(dropMetrics),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      environmentSubType = pulumi.Input.asInput<String>(environmentSubType),
      environmentType = pulumi.Input.asInput<String>(environmentType),
      managedType = pulumi.Input.asOptionalInput<String>(managedType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      bindResourceId: map['bindResourceId'] == null ? null : pulumi.Output.create<String>(map['bindResourceId'] as String),
      dropMetrics: map['dropMetrics'] == null ? null : pulumi.Output.create<String>(map['dropMetrics'] as String),
      environmentName: map['environmentName'] == null ? null : pulumi.Output.create<String>(map['environmentName'] as String),
      environmentSubType: pulumi.Output.create<String>(map['environmentSubType'] as String),
      environmentType: pulumi.Output.create<String>(map['environmentType'] as String),
      managedType: map['managedType'] == null ? null : pulumi.Output.create<String>(map['managedType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

