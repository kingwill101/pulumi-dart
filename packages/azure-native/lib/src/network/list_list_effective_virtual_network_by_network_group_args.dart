// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_list_effective_virtual_network_by_network_group_args_doc}
/// Arguments for listListEffectiveVirtualNetworkByNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_list_list_effective_virtual_network_by_network_group_args_doc}
class ListListEffectiveVirtualNetworkByNetworkGroupArgs {
  /// The name of the network group.
  final pulumi.Input<String> networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListListEffectiveVirtualNetworkByNetworkGroupArgs].
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  ListListEffectiveVirtualNetworkByNetworkGroupArgs({
    required String networkGroupName,
    required String networkManagerName,
    required String resourceGroupName,
    String? skipToken,
  }) :
      networkGroupName = pulumi.Input.asInput<String>(networkGroupName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupName': networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
    };
  }

  factory ListListEffectiveVirtualNetworkByNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListListEffectiveVirtualNetworkByNetworkGroupArgs(
      networkGroupName: map['networkGroupName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
    );
  }
}

