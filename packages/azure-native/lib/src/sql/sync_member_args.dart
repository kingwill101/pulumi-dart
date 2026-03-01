// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_sync_member_args_doc}
/// The set of arguments for SyncMember.
/// {@endtemplate}
/// {@macro pulumi_sql_sync_member_args_doc}
class SyncMemberArgs {
  /// Database name of the member database in the sync member.
  final pulumi.Input<String> databaseName;
  /// Database type of the sync member.
  final pulumi.Input<String>? databaseType;
  /// Password of the member database in the sync member.
  final pulumi.Input<String>? password;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Server name of the member database in the sync member
  final pulumi.Input<String> serverName;
  /// SQL Server database id of the sync member.
  final pulumi.Input<String>? sqlServerDatabaseId;
  /// ARM resource id of the sync agent in the sync member.
  final pulumi.Input<String>? syncAgentId;
  /// Sync direction of the sync member.
  final pulumi.Input<String>? syncDirection;
  /// The name of the sync group on which the sync member is hosted.
  final pulumi.Input<String> syncGroupName;
  /// ARM resource id of the sync member logical database, for sync members in Azure.
  final pulumi.Input<String>? syncMemberAzureDatabaseResourceId;
  /// The name of the sync member.
  final pulumi.Input<String>? syncMemberName;
  /// Whether to use private link connection.
  final pulumi.Input<bool>? usePrivateLinkConnection;
  /// User name of the member database in the sync member.
  final pulumi.Input<String>? userName;

  /// Creates a new [SyncMemberArgs].
  /// [databaseName] Database name of the member database in the sync member.
  /// [databaseType] Database type of the sync member.
  /// [password] Password of the member database in the sync member.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] Server name of the member database in the sync member
  /// [sqlServerDatabaseId] SQL Server database id of the sync member.
  /// [syncAgentId] ARM resource id of the sync agent in the sync member.
  /// [syncDirection] Sync direction of the sync member.
  /// [syncGroupName] The name of the sync group on which the sync member is hosted.
  /// [syncMemberAzureDatabaseResourceId] ARM resource id of the sync member logical database, for sync members in Azure.
  /// [syncMemberName] The name of the sync member.
  /// [usePrivateLinkConnection] Whether to use private link connection.
  /// [userName] User name of the member database in the sync member.
  SyncMemberArgs({
    required String databaseName,
    String? databaseType,
    String? password,
    required String resourceGroupName,
    required String serverName,
    String? sqlServerDatabaseId,
    String? syncAgentId,
    String? syncDirection,
    required String syncGroupName,
    String? syncMemberAzureDatabaseResourceId,
    String? syncMemberName,
    bool? usePrivateLinkConnection,
    String? userName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sqlServerDatabaseId = pulumi.Input.asOptionalInput<String>(sqlServerDatabaseId),
      syncAgentId = pulumi.Input.asOptionalInput<String>(syncAgentId),
      syncDirection = pulumi.Input.asOptionalInput<String>(syncDirection),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName),
      syncMemberAzureDatabaseResourceId = pulumi.Input.asOptionalInput<String>(syncMemberAzureDatabaseResourceId),
      syncMemberName = pulumi.Input.asOptionalInput<String>(syncMemberName),
      usePrivateLinkConnection = pulumi.Input.asOptionalInput<bool>(usePrivateLinkConnection),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'databaseType': ?databaseType,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sqlServerDatabaseId': ?sqlServerDatabaseId,
      'syncAgentId': ?syncAgentId,
      'syncDirection': ?syncDirection,
      'syncGroupName': syncGroupName,
      'syncMemberAzureDatabaseResourceId': ?syncMemberAzureDatabaseResourceId,
      'syncMemberName': ?syncMemberName,
      'usePrivateLinkConnection': ?usePrivateLinkConnection,
      'userName': ?userName,
    };
  }

  factory SyncMemberArgs.fromMap(Map<String, dynamic> map) {
    return SyncMemberArgs(
      databaseName: map['databaseName'] as String,
      databaseType: map['databaseType'] == null ? null : map['databaseType'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      sqlServerDatabaseId: map['sqlServerDatabaseId'] == null ? null : map['sqlServerDatabaseId'] as String,
      syncAgentId: map['syncAgentId'] == null ? null : map['syncAgentId'] as String,
      syncDirection: map['syncDirection'] == null ? null : map['syncDirection'] as String,
      syncGroupName: map['syncGroupName'] as String,
      syncMemberAzureDatabaseResourceId: map['syncMemberAzureDatabaseResourceId'] == null ? null : map['syncMemberAzureDatabaseResourceId'] as String,
      syncMemberName: map['syncMemberName'] == null ? null : map['syncMemberName'] as String,
      usePrivateLinkConnection: map['usePrivateLinkConnection'] == null ? null : map['usePrivateLinkConnection'] as bool,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

