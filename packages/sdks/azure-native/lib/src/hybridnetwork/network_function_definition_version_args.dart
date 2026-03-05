// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'containerized_network_function_definition_version.dart';

/// {@template pulumi_hybridnetwork_network_function_definition_version_args_doc}
/// The set of arguments for NetworkFunctionDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_network_function_definition_version_args_doc}
class NetworkFunctionDefinitionVersionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the network function definition group.
  final pulumi.Input<String> networkFunctionDefinitionGroupName;
  /// The name of the network function definition version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  final pulumi.Input<String>? networkFunctionDefinitionVersionName;
  /// Network function definition version properties.
  final pulumi.Input<ContainerizedNetworkFunctionDefinitionVersion>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkFunctionDefinitionVersionArgs].
  /// [location] The geo-location where the resource lives
  /// [networkFunctionDefinitionGroupName] The name of the network function definition group.
  /// [networkFunctionDefinitionVersionName] The name of the network function definition version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.
  /// [properties] Network function definition version properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkFunctionDefinitionVersionArgs({
    this.location,
    required this.networkFunctionDefinitionGroupName,
    this.networkFunctionDefinitionVersionName,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkFunctionDefinitionGroupName': networkFunctionDefinitionGroupName,
      'networkFunctionDefinitionVersionName': ?networkFunctionDefinitionVersionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ContainerizedNetworkFunctionDefinitionVersion, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkFunctionDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionDefinitionVersionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFunctionDefinitionGroupName: pulumi.Input.fromValue(map['networkFunctionDefinitionGroupName'] as String),
      networkFunctionDefinitionVersionName: (() { final guardedValue = map['networkFunctionDefinitionVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerizedNetworkFunctionDefinitionVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

