// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_get_shared_private_link_resource_args_doc}
/// Arguments for getSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_search_get_shared_private_link_resource_args_doc}
class GetSharedPrivateLinkResourceArgs {
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;
  /// The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  final pulumi.Input<String> sharedPrivateLinkResourceName;

  /// Creates a new [GetSharedPrivateLinkResourceArgs].
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  GetSharedPrivateLinkResourceArgs({
    required String resourceGroupName,
    required String searchServiceName,
    required String sharedPrivateLinkResourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName),
      sharedPrivateLinkResourceName = pulumi.Input.asInput<String>(sharedPrivateLinkResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
      'sharedPrivateLinkResourceName': sharedPrivateLinkResourceName,
    };
  }

  factory GetSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedPrivateLinkResourceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      searchServiceName: map['searchServiceName'] as String,
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] as String,
    );
  }
}

