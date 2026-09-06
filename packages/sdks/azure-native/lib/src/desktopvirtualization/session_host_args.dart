// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_session_host_args_doc}
/// The set of arguments for SessionHost.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_session_host_args_doc}
class SessionHostArgs {
  /// Allow a new session.
  final pulumi.Input<bool?>? allowNewSession;
  /// User assigned to SessionHost.
  final pulumi.Input<String?>? assignedUser;
  /// Friendly name of SessionHost
  final pulumi.Input<String?>? friendlyName;
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the session host within the specified host pool
  final pulumi.Input<String?>? sessionHostName;

  /// Creates a new [SessionHostArgs].
  /// [allowNewSession] Allow a new session.
  /// [assignedUser] User assigned to SessionHost.
  /// [friendlyName] Friendly name of SessionHost
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionHostName] The name of the session host within the specified host pool
  const SessionHostArgs({
    this.allowNewSession,
    this.assignedUser,
    this.friendlyName,
    required this.hostPoolName,
    required this.resourceGroupName,
    this.sessionHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewSession': ?allowNewSession,
      'assignedUser': ?assignedUser,
      'friendlyName': ?friendlyName,
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
      'sessionHostName': ?sessionHostName,
    };
  }

  factory SessionHostArgs.fromMap(Map<String, dynamic> map) {
    return SessionHostArgs(
      allowNewSession: (() { final guardedValue = map['allowNewSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      assignedUser: (() { final guardedValue = map['assignedUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sessionHostName: (() { final guardedValue = map['sessionHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
