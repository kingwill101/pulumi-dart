// ignore_for_file: unused_element, unnecessary_cast


/// Details of the On Premise Sql resource that was assessed
class OnPremiseSqlResourceDetails {
  /// The Sql database name installed on the machine
  final String databaseName;
  /// The name of the machine
  final String machineName;
  /// The Sql server name installed on the machine
  final String serverName;
  /// The platform where the assessed resource resides
  /// Expected value is 'OnPremiseSql'.
  final String source;
  /// The oms agent Id installed on the machine
  final String sourceComputerId;
  /// The unique Id of the machine
  final String vmuuid;
  /// Azure resource Id of the workspace the machine is attached to
  final String workspaceId;

  /// Creates a new [OnPremiseSqlResourceDetails].
  /// [databaseName] The Sql database name installed on the machine
  /// [machineName] The name of the machine
  /// [serverName] The Sql server name installed on the machine
  /// [source] The platform where the assessed resource resides
  /// [sourceComputerId] The oms agent Id installed on the machine
  /// [vmuuid] The unique Id of the machine
  /// [workspaceId] Azure resource Id of the workspace the machine is attached to
  OnPremiseSqlResourceDetails({
    required this.databaseName,
    required this.machineName,
    required this.serverName,
    required this.source,
    required this.sourceComputerId,
    required this.vmuuid,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'machineName': machineName,
      'serverName': serverName,
      'source': source,
      'sourceComputerId': sourceComputerId,
      'vmuuid': vmuuid,
      'workspaceId': workspaceId,
    };
  }

  factory OnPremiseSqlResourceDetails.fromMap(Map<String, dynamic> map) {
    return OnPremiseSqlResourceDetails(
      databaseName: map['databaseName'] as String,
      machineName: map['machineName'] as String,
      serverName: map['serverName'] as String,
      source: map['source'] as String,
      sourceComputerId: map['sourceComputerId'] as String,
      vmuuid: map['vmuuid'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

