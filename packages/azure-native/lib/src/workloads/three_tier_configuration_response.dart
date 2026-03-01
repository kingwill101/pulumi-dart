// ignore_for_file: unused_element, unnecessary_cast

import 'application_server_configuration_response.dart';
import 'central_server_configuration_response.dart';
import 'database_configuration_response.dart';
import 'high_availability_configuration_response.dart';
import 'network_configuration_response.dart';
import 'storage_configuration_response.dart';
import 'three_tier_full_resource_names_response.dart';

/// Gets or sets the three tier SAP configuration. For prerequisites for creating the infrastructure, please see [here](https://go.microsoft.com/fwlink/?linkid=2212611&amp;clcid=0x409)
class ThreeTierConfigurationResponse {
  /// The application resource group where SAP system resources will be deployed.
  final String appResourceGroup;
  /// The application server configuration.
  final ApplicationServerConfigurationResponse applicationServer;
  /// The central server configuration.
  final CentralServerConfigurationResponse centralServer;
  /// The set of custom names to be used for underlying azure resources that are part of the SAP system.
  final ThreeTierFullResourceNamesResponse? customResourceNames;
  /// The database configuration.
  final DatabaseConfigurationResponse databaseServer;
  /// The type of SAP deployment, single server or Three tier.
  /// Expected value is 'ThreeTier'.
  final String deploymentType;
  /// The high availability configuration.
  final HighAvailabilityConfigurationResponse? highAvailabilityConfig;
  /// Network configuration common to all servers
  final NetworkConfigurationResponse? networkConfiguration;
  /// The storage configuration.
  final StorageConfigurationResponse? storageConfiguration;

  /// Creates a new [ThreeTierConfigurationResponse].
  /// [appResourceGroup] The application resource group where SAP system resources will be deployed.
  /// [applicationServer] The application server configuration.
  /// [centralServer] The central server configuration.
  /// [customResourceNames] The set of custom names to be used for underlying azure resources that are part of the SAP system.
  /// [databaseServer] The database configuration.
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  /// [highAvailabilityConfig] The high availability configuration.
  /// [networkConfiguration] Network configuration common to all servers
  /// [storageConfiguration] The storage configuration.
  ThreeTierConfigurationResponse({
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

  factory ThreeTierConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ThreeTierConfigurationResponse(
      appResourceGroup: map['appResourceGroup'] as String,
      applicationServer: ApplicationServerConfigurationResponse.fromMap((map['applicationServer'] as Map).cast<String, dynamic>()),
      centralServer: CentralServerConfigurationResponse.fromMap((map['centralServer'] as Map).cast<String, dynamic>()),
      customResourceNames: map['customResourceNames'] == null ? null : ThreeTierFullResourceNamesResponse.fromMap((map['customResourceNames'] as Map).cast<String, dynamic>()),
      databaseServer: DatabaseConfigurationResponse.fromMap((map['databaseServer'] as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'] as String,
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : HighAvailabilityConfigurationResponse.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>()),
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfigurationResponse.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      storageConfiguration: map['storageConfiguration'] == null ? null : StorageConfigurationResponse.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

