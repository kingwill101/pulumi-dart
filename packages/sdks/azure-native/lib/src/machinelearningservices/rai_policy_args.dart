// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_policy_properties.dart';

/// {@template pulumi_machinelearningservices_rai_policy_args_doc}
/// The set of arguments for RaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_rai_policy_args_doc}
class RaiPolicyArgs {
  /// Name of the endpoint resource.
  final pulumi.Input<String> endpointName;
  /// Azure OpenAI Content Filters properties.
  final pulumi.Input<RaiPolicyProperties> properties;
  /// Api version used by proxy call
  final pulumi.Input<String>? proxyApiVersion;
  /// Name of the Rai Policy.
  final pulumi.Input<String>? raiPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [RaiPolicyArgs].
  /// [endpointName] Name of the endpoint resource.
  /// [properties] Azure OpenAI Content Filters properties.
  /// [proxyApiVersion] Api version used by proxy call
  /// [raiPolicyName] Name of the Rai Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  RaiPolicyArgs({
    required this.endpointName,
    required this.properties,
    this.proxyApiVersion,
    this.raiPolicyName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'properties': pulumi.Input.mapInputValue<RaiPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'proxyApiVersion': ?proxyApiVersion,
      'raiPolicyName': ?raiPolicyName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory RaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RaiPolicyArgs(
      endpointName: (map['endpointName'] as String).input(),
      properties: (RaiPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      proxyApiVersion: map['proxyApiVersion'] == null ? null : (map['proxyApiVersion']! as String).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

