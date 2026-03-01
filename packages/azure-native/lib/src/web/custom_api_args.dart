// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_api_properties_definition.dart';

/// {@template pulumi_web_custom_api_args_doc}
/// The set of arguments for CustomApi.
/// {@endtemplate}
/// {@macro pulumi_web_custom_api_args_doc}
class CustomApiArgs {
  /// API name
  final pulumi.Input<String>? apiName;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Custom API properties
  final pulumi.Input<CustomApiPropertiesDefinition>? properties;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomApiArgs].
  /// [apiName] API name
  /// [location] Resource location
  /// [properties] Custom API properties
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  /// [tags] Resource tags
  CustomApiArgs({
    String? apiName,
    String? location,
    CustomApiPropertiesDefinition? properties,
    required String resourceGroupName,
    String? subscriptionId,
    Map<String, String>? tags,
  }) :
      apiName = pulumi.Input.asOptionalInput<String>(apiName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CustomApiPropertiesDefinition>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': ?apiName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CustomApiPropertiesDefinition, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory CustomApiArgs.fromMap(Map<String, dynamic> map) {
    return CustomApiArgs(
      apiName: map['apiName'] == null ? null : map['apiName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CustomApiPropertiesDefinition.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

