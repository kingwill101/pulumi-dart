// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_group_args_doc}
/// The set of arguments for NetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_network_group_args_doc}
class NetworkGroupArgs {
  /// A description of the network group.
  final pulumi.Input<String>? description;
  /// The type of the group member.
  final pulumi.Input<String>? memberType;
  /// The name of the network group.
  final pulumi.Input<String>? networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkGroupArgs].
  /// [description] A description of the network group.
  /// [memberType] The type of the group member.
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  NetworkGroupArgs({
    String? description,
    String? memberType,
    String? networkGroupName,
    required String networkManagerName,
    required String resourceGroupName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      memberType = pulumi.Input.asOptionalInput<String>(memberType),
      networkGroupName = pulumi.Input.asOptionalInput<String>(networkGroupName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'memberType': ?memberType,
      'networkGroupName': ?networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      memberType: map['memberType'] == null ? null : map['memberType'] as String,
      networkGroupName: map['networkGroupName'] == null ? null : map['networkGroupName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

