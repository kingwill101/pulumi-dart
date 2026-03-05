// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_host_args_doc}
/// Arguments for getHost.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_host_args_doc}
class GetHostArgs {
  /// Name of the host.
  final pulumi.Input<String> hostName;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHostArgs].
  /// [hostName] Name of the host.
  /// [resourceGroupName] The Resource Group Name.
  GetHostArgs({
    required this.hostName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHostArgs.fromMap(Map<String, dynamic> map) {
    return GetHostArgs(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

