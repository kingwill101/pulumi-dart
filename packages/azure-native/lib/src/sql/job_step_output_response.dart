// ignore_for_file: unused_element, unnecessary_cast


/// The output configuration of a job step.
class JobStepOutputResponse {
  /// The resource ID of the credential to use to connect to the output destination.
  final String? credential;
  /// The output destination database.
  final String databaseName;
  /// The output destination resource group.
  final String? resourceGroupName;
  /// The output destination schema.
  final String? schemaName;
  /// The output destination server name.
  final String serverName;
  /// The output destination subscription id.
  final String? subscriptionId;
  /// The output destination table.
  final String tableName;
  /// The output destination type.
  final String? type;

  /// Creates a new [JobStepOutputResponse].
  /// [credential] The resource ID of the credential to use to connect to the output destination.
  /// [databaseName] The output destination database.
  /// [resourceGroupName] The output destination resource group.
  /// [schemaName] The output destination schema.
  /// [serverName] The output destination server name.
  /// [subscriptionId] The output destination subscription id.
  /// [tableName] The output destination table.
  /// [type] The output destination type.
  JobStepOutputResponse({
    this.credential,
    required this.databaseName,
    this.resourceGroupName,
    this.schemaName,
    required this.serverName,
    this.subscriptionId,
    required this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential,
      'databaseName': databaseName,
      'resourceGroupName': ?resourceGroupName,
      'schemaName': ?schemaName,
      'serverName': serverName,
      'subscriptionId': ?subscriptionId,
      'tableName': tableName,
      'type': ?type,
    };
  }

  factory JobStepOutputResponse.fromMap(Map<String, dynamic> map) {
    return JobStepOutputResponse(
      credential: map['credential'] == null ? null : map['credential'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      schemaName: map['schemaName'] == null ? null : map['schemaName'] as String,
      serverName: map['serverName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tableName: map['tableName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

