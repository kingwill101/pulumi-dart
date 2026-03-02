// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_configuration_private_link_scope_properties.dart';

/// {@template pulumi_kubernetesconfiguration_private_link_scope_args_doc}
/// The set of arguments for PrivateLinkScope.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_private_link_scope_args_doc}
class PrivateLinkScopeArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties that define a Azure Arc PrivateLinkScope resource.
  final pulumi.Input<KubernetesConfigurationPrivateLinkScopeProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Arc PrivateLinkScope resource.
  final pulumi.Input<String>? scopeName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkScopeArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] Properties that define a Azure Arc PrivateLinkScope resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Arc PrivateLinkScope resource.
  /// [tags] Resource tags.
  PrivateLinkScopeArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.scopeName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<KubernetesConfigurationPrivateLinkScopeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scopeName': ?scopeName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkScopeArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopeArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (KubernetesConfigurationPrivateLinkScopeProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeName: map['scopeName'] == null ? null : (map['scopeName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

