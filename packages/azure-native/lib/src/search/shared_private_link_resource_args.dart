// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_resource_properties.dart';

/// {@template pulumi_search_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_search_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// Describes the properties of a shared private link resource managed by the Azure AI Search service.
  final pulumi.Input<SharedPrivateLinkResourceProperties>? properties;
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;
  /// The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  final pulumi.Input<String>? sharedPrivateLinkResourceName;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [properties] Describes the properties of a shared private link resource managed by the Azure AI Search service.
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  SharedPrivateLinkResourceArgs({
    SharedPrivateLinkResourceProperties? properties,
    required String resourceGroupName,
    required String searchServiceName,
    String? sharedPrivateLinkResourceName,
  }) :
      properties = pulumi.Input.asOptionalInput<SharedPrivateLinkResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName),
      sharedPrivateLinkResourceName = pulumi.Input.asOptionalInput<String>(sharedPrivateLinkResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SharedPrivateLinkResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
      'sharedPrivateLinkResourceName': ?sharedPrivateLinkResourceName,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      properties: map['properties'] == null ? null : SharedPrivateLinkResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      searchServiceName: map['searchServiceName'] as String,
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] == null ? null : map['sharedPrivateLinkResourceName'] as String,
    );
  }
}

