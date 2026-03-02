// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when auth_type is AzureSynapseAnalyticsSinkConnector
class AzureSynapseAnalyticsSinkConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureSynapseAnalyticsSinkConnector'.
  final pulumi.Input<String> connectorServiceType;
  /// Azure Synapse Dedicated SQL Pool Database Name
  final pulumi.Input<String>? synapseSqlDatabaseName;
  /// Azure Synapse SQL login details
  final pulumi.Input<String>? synapseSqlPassword;
  /// Azure Synapse Analytics SQL Server Name
  final pulumi.Input<String>? synapseSqlServerName;
  /// Azure Synapse SQL login details
  final pulumi.Input<String>? synapseSqlUser;

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
      connectorServiceType: (map['connectorServiceType'] as String).input(),
      synapseSqlDatabaseName: map['synapseSqlDatabaseName'] == null ? null : (map['synapseSqlDatabaseName']! as String).input(),
      synapseSqlPassword: map['synapseSqlPassword'] == null ? null : (map['synapseSqlPassword']! as String).input(),
      synapseSqlServerName: map['synapseSqlServerName'] == null ? null : (map['synapseSqlServerName']! as String).input(),
      synapseSqlUser: map['synapseSqlUser'] == null ? null : (map['synapseSqlUser']! as String).input(),
    );
  }
}

