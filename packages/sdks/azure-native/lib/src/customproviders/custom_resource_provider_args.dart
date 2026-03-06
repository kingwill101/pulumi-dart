// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rpaction_route_definition.dart';
import 'custom_rpresource_type_route_definition.dart';
import 'custom_rpvalidations.dart';

/// {@template pulumi_customproviders_custom_resource_provider_args_doc}
/// The set of arguments for CustomResourceProvider.
/// {@endtemplate}
/// {@macro pulumi_customproviders_custom_resource_provider_args_doc}
class CustomResourceProviderArgs {
  /// A list of actions that the custom resource provider implements.
  final pulumi.Input<List<CustomRPActionRouteDefinition>>? actions;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource provider.
  final pulumi.Input<String>? resourceProviderName;
  /// A list of resource types that the custom resource provider implements.
  final pulumi.Input<List<CustomRPResourceTypeRouteDefinition>>? resourceTypes;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of validations to run on the custom resource provider's requests.
  final pulumi.Input<List<CustomRPValidations>>? validations;

  /// Creates a new [CustomResourceProviderArgs].
  /// [actions] A list of actions that the custom resource provider implements.
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group.
  /// [resourceProviderName] The name of the resource provider.
  /// [resourceTypes] A list of resource types that the custom resource provider implements.
  /// [tags] Resource tags
  /// [validations] A list of validations to run on the custom resource provider's requests.
  const CustomResourceProviderArgs({
    this.actions,
    this.location,
    required this.resourceGroupName,
    this.resourceProviderName,
    this.resourceTypes,
    this.tags,
    this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<CustomRPActionRouteDefinition>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<CustomRPActionRouteDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceProviderName': ?resourceProviderName,
      'resourceTypes': ?pulumi.Input.mapOptionalInputValue<List<CustomRPResourceTypeRouteDefinition>, List<Map<String, dynamic>>>(resourceTypes, (value) => pulumi.Input.encodeList<CustomRPResourceTypeRouteDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'validations': ?pulumi.Input.mapOptionalInputValue<List<CustomRPValidations>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<CustomRPValidations, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomResourceProviderArgs.fromMap(Map<String, dynamic> map) {
    return CustomResourceProviderArgs(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRPActionRouteDefinition>(guardedValue, (value) => CustomRPActionRouteDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceProviderName: (() { final guardedValue = map['resourceProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRPResourceTypeRouteDefinition>(guardedValue, (value) => CustomRPResourceTypeRouteDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validations: (() { final guardedValue = map['validations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomRPValidations>(guardedValue, (value) => CustomRPValidations.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

