// ignore_for_file: unused_element, unnecessary_cast

import 'application_server_configuration.dart';
import 'central_server_configuration.dart';
import 'database_configuration.dart';
import 'high_availability_configuration.dart';
import 'network_configuration.dart';
import 'storage_configuration.dart';
import 'three_tier_full_resource_names.dart';

/// Gets or sets the three tier SAP configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class ThreeTierConfiguration {
  /// The application resource group where SAP system resources will be deployed.
  final String appResourceGroup;
  /// The application server configuration.
  final ApplicationServerConfiguration applicationServer;
  /// The central server configuration.
  final CentralServerConfiguration centralServer;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final ThreeTierFullResourceNames? customResourceNames;
  /// The database configuration.
  final DatabaseConfiguration databaseServer;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'ThreeTier'.
  final String deploymentType;
  /// The high availability configuration.
  final HighAvailabilityConfiguration? highAvailabilityConfig;
  /// Network configuration common to all servers
  final NetworkConfiguration? networkConfiguration;
  /// The storage configuration.
  final StorageConfiguration? storageConfiguration;

  /// Creates a new [ThreeTierConfiguration].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [applicationServer] The application server configuration.
  /// [centralServer] The central server configuration.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseServer] The database configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [highAvailabilityConfig] The high availability configuration.
  /// [networkConfiguration] Network configuration common to all servers
  /// [storageConfiguration] The storage configuration.
  ThreeTierConfiguration({
    required this.appResourceGroup,
    required this.applicationServer,
    required this.centralServer,
    this.customResourceNames,
    required this.databaseServer,
    required this.deploymentType,
    this.highAvailabilityConfig,
    this.networkConfiguration,
    this.storageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceGroup': appResourceGroup,
      'applicationServer': applicationServer.toMap(),
      'centralServer': centralServer.toMap(),
      'customResourceNames': ?customResourceNames == null ? null : customResourceNames!.toMap(),
      'databaseServer': databaseServer.toMap(),
      'deploymentType': deploymentType,
      'highAvailabilityConfig': ?highAvailabilityConfig == null ? null : highAvailabilityConfig!.toMap(),
      'networkConfiguration': ?networkConfiguration == null ? null : networkConfiguration!.toMap(),
      'storageConfiguration': ?storageConfiguration == null ? null : storageConfiguration!.toMap(),
    };
  }

  factory ThreeTierConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierConfiguration(
      appResourceGroup: map['appResourceGroup'] as String,
      applicationServer: ApplicationServerConfiguration.fromMap((map['applicationServer'] as Map).cast<String, dynamic>()),
      centralServer: CentralServerConfiguration.fromMap((map['centralServer'] as Map).cast<String, dynamic>()),
      customResourceNames: map['customResourceNames'] == null ? null : ThreeTierFullResourceNames.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>()),
      databaseServer: DatabaseConfiguration.fromMap((map['databaseServer'] as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'] as String,
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : HighAvailabilityConfiguration.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>()),
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      storageConfiguration: map['storageConfiguration'] == null ? null : StorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

