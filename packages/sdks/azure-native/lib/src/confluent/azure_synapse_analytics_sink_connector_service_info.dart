// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when auth_type is AzureSynapseAnalyticsSinkConnector
class AzureSynapseAnalyticsSinkConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureSynapseAnalyticsSinkConnector'.
  final String connectorServiceType;
  /// Azure Synapse Dedicated SQL Pool Database Name
  final String? synapseSqlDatabaseName;
  /// Azure Synapse SQL login details
  final String? synapseSqlPassword;
  /// Azure Synapse Analytics SQL Server Name
  final String? synapseSqlServerName;
  /// Azure Synapse SQL login details
  final String? synapseSqlUser;

  /// Creates a new [AzureSynapseAnalyticsSinkConnectorServiceInfo].
  /// [connectorServiceType] The connector service type.
  /// [synapseSqlDatabaseName] Azure Synapse Dedicated SQL Pool Database Name
  /// [synapseSqlPassword] Azure Synapse SQL login details
  /// [synapseSqlServerName] Azure Synapse Analytics SQL Server Name
  /// [synapseSqlUser] Azure Synapse SQL login details
  AzureSynapseAnalyticsSinkConnectorServiceInfo({
    required this.connectorServiceType,
    this.synapseSqlDatabaseName,
    this.synapseSqlPassword,
    this.synapseSqlServerName,
    this.synapseSqlUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorServiceType': connectorServiceType,
      'synapseSqlDatabaseName': ?synapseSqlDatabaseName,
      'synapseSqlPassword': ?synapseSqlPassword,
      'synapseSqlServerName': ?synapseSqlServerName,
      'synapseSqlUser': ?synapseSqlUser,
    };
  }

  factory AzureSynapseAnalyticsSinkConnectorServiceInfo.fromMap(Map<String, dynamic> map) {
    return AzureSynapseAnalyticsSinkConnectorServiceInfo(
      connectorServiceType: map['connectorServiceType'] as String,
      synapseSqlDatabaseName: map['synapseSqlDatabaseName'] == null ? null : map['synapseSqlDatabaseName'] as String,
      synapseSqlPassword: map['synapseSqlPassword'] == null ? null : map['synapseSqlPassword'] as String,
      synapseSqlServerName: map['synapseSqlServerName'] == null ? null : map['synapseSqlServerName'] as String,
      synapseSqlUser: map['synapseSqlUser'] == null ? null : map['synapseSqlUser'] as String,
    );
  }
}

