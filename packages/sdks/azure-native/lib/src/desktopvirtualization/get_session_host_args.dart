// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_session_host_args_doc}
/// Arguments for getSessionHost.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_session_host_args_doc}
class GetSessionHostArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the session host within the specified host pool
  final pulumi.Input<String> sessionHostName;

  /// Creates a new [GetSessionHostArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionHostName] The name of the session host within the specified host pool
  const GetSessionHostArgs({
    required this.hostPoolName,
    required this.resourceGroupName,
    required this.sessionHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
      'sessionHostName': sessionHostName,
    };
  }

  factory GetSessionHostArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionHostArgs(
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sessionHostName: pulumi.Input.fromValue(map['sessionHostName'] as String),
    );
  }
}
