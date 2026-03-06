// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_response.dart';

/// Result data returned by getMongoDBResourceMongoUserDefinition.
class GetMongoDBResourceMongoUserDefinitionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A custom definition for the USer Definition.
  final String? customData;
  /// The database name for which access is being granted for this User Definition.
  final String? databaseName;
  /// The unique resource identifier of the database account.
  final String id;
  /// The Mongo Auth mechanism. For now, we only support auth mechanism SCRAM-SHA-256.
  final String? mechanisms;
  /// The name of the database account.
  final String name;
  /// The password for User Definition. Response does not contain user password.
  final String? password;
  /// The set of roles inherited by the User Definition.
  final List<RoleResponse>? roles;
  /// The type of Azure resource.
  final String type;
  /// The user name for User Definition.
  final String? userName;

  /// Creates a new [GetMongoDBResourceMongoUserDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customData] A custom definition for the USer Definition.
  /// [databaseName] The database name for which access is being granted for this User Definition.
  /// [id] The unique resource identifier of the database account.
  /// [mechanisms] The Mongo Auth mechanism. For now, we only support auth mechanism SCRAM-SHA-256.
  /// [name] The name of the database account.
  /// [password] The password for User Definition. Response does not contain user password.
  /// [roles] The set of roles inherited by the User Definition.
  /// [type] The type of Azure resource.
  /// [userName] The user name for User Definition.
  const GetMongoDBResourceMongoUserDefinitionResult({
    required this.azureApiVersion,
    this.customData,
    this.databaseName,
    required this.id,
    this.mechanisms,
    required this.name,
    this.password,
    this.roles,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customData': ?customData,
      'databaseName': ?databaseName,
      'id': id,
      'mechanisms': ?mechanisms,
      'name': name,
      'password': ?password,
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'userName': ?userName,
    };
  }

  factory GetMongoDBResourceMongoUserDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoUserDefinitionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      mechanisms: (() { final guardedValue = map['mechanisms']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleResponse>(guardedValue, (value) => RoleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

