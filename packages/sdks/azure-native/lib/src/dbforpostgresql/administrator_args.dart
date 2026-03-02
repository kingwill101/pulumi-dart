// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_administrator_args_doc}
/// The set of arguments for Administrator.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_administrator_args_doc}
class AdministratorArgs {
  /// Object identifier of the Microsoft Entra principal.
  final pulumi.Input<String>? objectId;
  /// Name of the Microsoft Entra principal.
  final pulumi.Input<String>? principalName;
  /// The type of Microsoft Entra principal to which the server administrator is associated.
  final pulumi.Input<String>? principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Identifier of the tenant in which the Microsoft Entra principal exists.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AdministratorArgs].
  /// [objectId] Object identifier of the Microsoft Entra principal.
  /// [principalName] Name of the Microsoft Entra principal.
  /// [principalType] The type of Microsoft Entra principal to which the server administrator is associated.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [tenantId] Identifier of the tenant in which the Microsoft Entra principal exists.
  AdministratorArgs({
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

  factory AdministratorArgs.fromMap(Map<String, dynamic> map) {
    return AdministratorArgs(
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      principalName: map['principalName'] == null ? null : (map['principalName'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

