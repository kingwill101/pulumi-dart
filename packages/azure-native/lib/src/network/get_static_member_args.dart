// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_static_member_args_doc}
/// Arguments for getStaticMember.
/// {@endtemplate}
/// {@macro pulumi_network_get_static_member_args_doc}
class GetStaticMemberArgs {
  /// The name of the network group.
  final pulumi.Input<String> networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the static member.
  final pulumi.Input<String> staticMemberName;

  /// Creates a new [GetStaticMemberArgs].
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [staticMemberName] The name of the static member.
  GetStaticMemberArgs({
    required String networkGroupName,
    required String networkManagerName,
    required String resourceGroupName,
    required String staticMemberName,
  }) :
      networkGroupName = pulumi.Input.asInput<String>(networkGroupName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staticMemberName = pulumi.Input.asInput<String>(staticMemberName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupName': networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'staticMemberName': staticMemberName,
    };
  }

  factory GetStaticMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticMemberArgs(
      networkGroupName: map['networkGroupName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      staticMemberName: map['staticMemberName'] as String,
    );
  }
}

