// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysql_flexible_server_active_directory_administratory_flexible_server_active_directory_administratory_args_doc}
/// The set of arguments for FlexibleServerActiveDirectoryAdministratory.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_server_active_directory_administratory_flexible_server_active_directory_administratory_args_doc}
class FlexibleServerActiveDirectoryAdministratoryArgs {
  /// The resource ID of the identity used for AAD Authentication.
  final pulumi.Input<String> identityId;
  /// The login name of the principal to set as the server administrator
  final pulumi.Input<String> login;
  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  final pulumi.Input<String> objectId;
  /// The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The Azure Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministratoryArgs].
  /// [identityId] The resource ID of the identity used for AAD Authentication.
  /// [login] The login name of the principal to set as the server administrator
  /// [objectId] The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  /// [serverId] The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID.
  FlexibleServerActiveDirectoryAdministratoryArgs({
    required String identityId,
    required String login,
    required String objectId,
    required String serverId,
    required String tenantId,
  }) :
      identityId = pulumi.Input.asInput<String>(identityId),
      login = pulumi.Input.asInput<String>(login),
      objectId = pulumi.Input.asInput<String>(objectId),
      serverId = pulumi.Input.asInput<String>(serverId),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': identityId,
      'login': login,
      'objectId': objectId,
      'serverId': serverId,
      'tenantId': tenantId,
    };
  }

  factory FlexibleServerActiveDirectoryAdministratoryArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerActiveDirectoryAdministratoryArgs(
      identityId: map['identityId'] as String,
      login: map['login'] as String,
      objectId: map['objectId'] as String,
      serverId: map['serverId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

