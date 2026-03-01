// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_management_group_network_manager_connection_args_doc}
/// The set of arguments for ManagementGroupNetworkManagerConnection.
/// {@endtemplate}
/// {@macro pulumi_network_management_group_network_manager_connection_args_doc}
class ManagementGroupNetworkManagerConnectionArgs {
  /// A description of the network manager connection.
  final pulumi.Input<String>? description;
  /// The management group Id which uniquely identify the Microsoft Azure management group.
  final pulumi.Input<String> managementGroupId;
  /// Name for the network manager connection.
  final pulumi.Input<String>? networkManagerConnectionName;
  /// Network Manager Id.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [ManagementGroupNetworkManagerConnectionArgs].
  /// [description] A description of the network manager connection.
  /// [managementGroupId] The management group Id which uniquely identify the Microsoft Azure management group.
  /// [networkManagerConnectionName] Name for the network manager connection.
  /// [networkManagerId] Network Manager Id.
  ManagementGroupNetworkManagerConnectionArgs({
    String? description,
    required String managementGroupId,
    String? networkManagerConnectionName,
    String? networkManagerId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      networkManagerConnectionName = pulumi.Input.asOptionalInput<String>(networkManagerConnectionName),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managementGroupId': managementGroupId,
      'networkManagerConnectionName': ?networkManagerConnectionName,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory ManagementGroupNetworkManagerConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ManagementGroupNetworkManagerConnectionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      managementGroupId: map['managementGroupId'] as String,
      networkManagerConnectionName: map['networkManagerConnectionName'] == null ? null : map['networkManagerConnectionName'] as String,
      networkManagerId: map['networkManagerId'] == null ? null : map['networkManagerId'] as String,
    );
  }
}

