// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_list_query_key_by_search_service_args_doc}
/// Arguments for listQueryKeyBySearchService.
/// {@endtemplate}
/// {@macro pulumi_search_list_query_key_by_search_service_args_doc}
class ListQueryKeyBySearchServiceArgs {
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [ListQueryKeyBySearchServiceArgs].
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  ListQueryKeyBySearchServiceArgs({
    required String resourceGroupName,
    required String searchServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
    };
  }

  factory ListQueryKeyBySearchServiceArgs.fromMap(Map<String, dynamic> map) {
    return ListQueryKeyBySearchServiceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      searchServiceName: map['searchServiceName'] as String,
    );
  }
}

