// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_operator_properties.dart';

/// {@template pulumi_kubernetesconfiguration_source_control_configuration_args_doc}
/// The set of arguments for SourceControlConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_source_control_configuration_args_doc}
class SourceControlConfigurationArgs {
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// Name-value pairs of protected configuration settings for the configuration
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Option to enable Helm Operator for this git configuration.
  final pulumi.Input<bool>? enableHelmOperator;
  /// Properties for Helm operator.
  final pulumi.Input<HelmOperatorProperties>? helmOperatorProperties;
  /// Instance name of the operator - identifying the specific configuration.
  final pulumi.Input<String>? operatorInstanceName;
  /// The namespace to which this operator is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  final pulumi.Input<String>? operatorNamespace;
  /// Any Parameters for the Operator instance in string format.
  final pulumi.Input<String>? operatorParams;
  /// Scope at which the operator will be installed.
  final pulumi.Input<String>? operatorScope;
  /// Type of the operator
  final pulumi.Input<String>? operatorType;
  /// Url of the SourceControl Repository.
  final pulumi.Input<String>? repositoryUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Source Control Configuration.
  final pulumi.Input<String>? sourceControlConfigurationName;
  /// Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances
  final pulumi.Input<String>? sshKnownHostsContents;

  /// Creates a new [SourceControlConfigurationArgs].
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [configurationProtectedSettings] Name-value pairs of protected configuration settings for the configuration
  /// [enableHelmOperator] Option to enable Helm Operator for this git configuration.
  /// [helmOperatorProperties] Properties for Helm operator.
  /// [operatorInstanceName] Instance name of the operator - identifying the specific configuration.
  /// [operatorNamespace] The namespace to which this operator is installed to. Maximum of 253 lower case alphanumeric characters, hyphen and period only.
  /// [operatorParams] Any Parameters for the Operator instance in string format.
  /// [operatorScope] Scope at which the operator will be installed.
  /// [operatorType] Type of the operator
  /// [repositoryUrl] Url of the SourceControl Repository.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlConfigurationName] Name of the Source Control Configuration.
  /// [sshKnownHostsContents] Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances
  const SourceControlConfigurationArgs({
    required this.clusterName,
    required this.clusterResourceName,
    required this.clusterRp,
    this.configurationProtectedSettings,
    this.enableHelmOperator,
    this.helmOperatorProperties,
    this.operatorInstanceName,
    this.operatorNamespace,
    this.operatorParams,
    this.operatorScope,
    this.operatorType,
    this.repositoryUrl,
    required this.resourceGroupName,
    this.sourceControlConfigurationName,
    this.sshKnownHostsContents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'enableHelmOperator': ?enableHelmOperator,
      'helmOperatorProperties': ?pulumi.Input.mapOptionalInputValue<HelmOperatorProperties, Map<String, dynamic>>(helmOperatorProperties, (value) => value.toMap()),
      'operatorInstanceName': ?operatorInstanceName,
      'operatorNamespace': ?operatorNamespace,
      'operatorParams': ?operatorParams,
      'operatorScope': ?operatorScope,
      'operatorType': ?operatorType,
      'repositoryUrl': ?repositoryUrl,
      'resourceGroupName': resourceGroupName,
      'sourceControlConfigurationName': ?sourceControlConfigurationName,
      'sshKnownHostsContents': ?sshKnownHostsContents,
    };
  }

  factory SourceControlConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlConfigurationArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterResourceName: pulumi.Input.fromValue(map['clusterResourceName'] as String),
      clusterRp: pulumi.Input.fromValue(map['clusterRp'] as String),
      configurationProtectedSettings: (() { final guardedValue = map['configurationProtectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableHelmOperator: (() { final guardedValue = map['enableHelmOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      helmOperatorProperties: (() { final guardedValue = map['helmOperatorProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmOperatorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operatorInstanceName: (() { final guardedValue = map['operatorInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorNamespace: (() { final guardedValue = map['operatorNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorParams: (() { final guardedValue = map['operatorParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorScope: (() { final guardedValue = map['operatorScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorType: (() { final guardedValue = map['operatorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceControlConfigurationName: (() { final guardedValue = map['sourceControlConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKnownHostsContents: (() { final guardedValue = map['sshKnownHostsContents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

