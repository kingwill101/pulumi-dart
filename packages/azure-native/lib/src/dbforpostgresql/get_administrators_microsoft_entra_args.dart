// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_administrators_microsoft_entra_args_doc}
/// Arguments for getAdministratorsMicrosoftEntra.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_administrators_microsoft_entra_args_doc}
class GetAdministratorsMicrosoftEntraArgs {
  /// Object identifier of the Microsoft Entra principal.
  final pulumi.Input<String> objectId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetAdministratorsMicrosoftEntraArgs].
  /// [objectId] Object identifier of the Microsoft Entra principal.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetAdministratorsMicrosoftEntraArgs({
    required String objectId,
    required String resourceGroupName,
    required String serverName,
  }) :
      objectId = pulumi.Input.asInput<String>(objectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetAdministratorsMicrosoftEntraArgs.fromMap(Map<String, dynamic> map) {
    return GetAdministratorsMicrosoftEntraArgs(
      objectId: map['objectId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

