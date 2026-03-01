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
  CustomResourceProviderArgs({
    List<CustomRPActionRouteDefinition>? actions,
    String? location,
    required String resourceGroupName,
    String? resourceProviderName,
    List<CustomRPResourceTypeRouteDefinition>? resourceTypes,
    Map<String, String>? tags,
    List<CustomRPValidations>? validations,
  }) :
      actions = pulumi.Input.asOptionalInput<List<CustomRPActionRouteDefinition>>(actions),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceProviderName = pulumi.Input.asOptionalInput<String>(resourceProviderName),
      resourceTypes = pulumi.Input.asOptionalInput<List<CustomRPResourceTypeRouteDefinition>>(resourceTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validations = pulumi.Input.asOptionalInput<List<CustomRPValidations>>(validations);

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
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<CustomRPActionRouteDefinition>(map['actions'], (value) => CustomRPActionRouteDefinition.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceProviderName: map['resourceProviderName'] == null ? null : map['resourceProviderName'] as String,
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Input.decodeList<CustomRPResourceTypeRouteDefinition>(map['resourceTypes'], (value) => CustomRPResourceTypeRouteDefinition.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      validations: map['validations'] == null ? null : pulumi.Input.decodeList<CustomRPValidations>(map['validations'], (value) => CustomRPValidations.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

