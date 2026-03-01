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
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? principalName,
    pulumi.Output<String>? principalType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? tenantId,
  }) :
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      principalName = pulumi.Input.asOptionalInput<String>(principalName),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      principalName: map['principalName'] == null ? null : pulumi.Output.create<String>(map['principalName'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

