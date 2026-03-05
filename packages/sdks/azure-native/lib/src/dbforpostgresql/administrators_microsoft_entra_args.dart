// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_administrators_microsoft_entra_args_doc}
/// The set of arguments for AdministratorsMicrosoftEntra.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_administrators_microsoft_entra_args_doc}
class AdministratorsMicrosoftEntraArgs {
  /// Object identifier of the Microsoft Entra principal.
  final pulumi.Input<String>? objectId;
  /// Name of the Microsoft Entra principal.
  final pulumi.Input<String>? principalName;
  /// Type of Microsoft Entra principal to which the server administrator is associated.
  final pulumi.Input<String>? principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Identifier of the tenant in which the Microsoft Entra principal exists.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AdministratorsMicrosoftEntraArgs].
  /// [objectId] Object identifier of the Microsoft Entra principal.
  /// [principalName] Name of the Microsoft Entra principal.
  /// [principalType] Type of Microsoft Entra principal to which the server administrator is associated.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [tenantId] Identifier of the tenant in which the Microsoft Entra principal exists.
  AdministratorsMicrosoftEntraArgs({
    this.objectId,
    this.principalName,
    this.principalType,
    required this.resourceGroupName,
    required this.serverName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'tenantId': ?tenantId,
    };
  }

  factory AdministratorsMicrosoftEntraArgs.fromMap(Map<String, dynamic> map) {
    return AdministratorsMicrosoftEntraArgs(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

