// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_effective_virtual_network_by_network_manager_args_doc}
/// Arguments for listEffectiveVirtualNetworkByNetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_list_effective_virtual_network_by_network_manager_args_doc}
class ListEffectiveVirtualNetworkByNetworkManagerArgs {
  /// Conditional Members.
  final pulumi.Input<String>? conditionalMembers;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  final pulumi.Input<String>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;

  /// Creates a new [ListEffectiveVirtualNetworkByNetworkManagerArgs].
  /// [conditionalMembers] Conditional Members.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  ListEffectiveVirtualNetworkByNetworkManagerArgs({
    String? conditionalMembers,
    required String networkManagerName,
    required String resourceGroupName,
    String? skipToken,
    int? top,
  }) :
      conditionalMembers = pulumi.Input.asOptionalInput<String>(conditionalMembers),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalMembers': ?conditionalMembers,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListEffectiveVirtualNetworkByNetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return ListEffectiveVirtualNetworkByNetworkManagerArgs(
      conditionalMembers: map['conditionalMembers'] == null ? null : map['conditionalMembers'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

