// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analysisservices_list_server_gateway_status_args_doc}
/// Arguments for listServerGatewayStatus.
/// {@endtemplate}
/// {@macro pulumi_analysisservices_list_server_gateway_status_args_doc}
class ListServerGatewayStatusArgs {
  /// The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Analysis Services server.
  final pulumi.Input<String> serverName;

  /// Creates a new [ListServerGatewayStatusArgs].
  /// [resourceGroupName] The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  /// [serverName] The name of the Analysis Services server.
  ListServerGatewayStatusArgs({
    required String resourceGroupName,
    required String serverName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ListServerGatewayStatusArgs.fromMap(Map<String, dynamic> map) {
    return ListServerGatewayStatusArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

