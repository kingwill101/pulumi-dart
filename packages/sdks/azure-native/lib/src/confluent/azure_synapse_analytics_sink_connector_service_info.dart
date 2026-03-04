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

  factory AzureSynapseAnalyticsSinkConnectorServiceInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureSynapseAnalyticsSinkConnectorServiceInfo(
      connectorServiceType: pulumi.Input.fromValue(
        map['connectorServiceType'] as String,
      ),
      synapseSqlDatabaseName: (() {
        final guardedValue = map['synapseSqlDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synapseSqlPassword: (() {
        final guardedValue = map['synapseSqlPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synapseSqlServerName: (() {
        final guardedValue = map['synapseSqlServerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synapseSqlUser: (() {
        final guardedValue = map['synapseSqlUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
