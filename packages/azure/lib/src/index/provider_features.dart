// ignore_for_file: unused_element, unnecessary_cast

import 'provider_features_api_management.dart';
import 'provider_features_app_configuration.dart';
import 'provider_features_application_insights.dart';
import 'provider_features_cognitive_account.dart';
import 'provider_features_databricks_workspace.dart';
import 'provider_features_key_vault.dart';
import 'provider_features_log_analytics_workspace.dart';
import 'provider_features_machine_learning.dart';
import 'provider_features_managed_disk.dart';
import 'provider_features_netapp.dart';
import 'provider_features_postgresql_flexible_server.dart';
import 'provider_features_recovery_service.dart';
import 'provider_features_recovery_services_vaults.dart';
import 'provider_features_resource_group.dart';
import 'provider_features_storage.dart';
import 'provider_features_subscription.dart';
import 'provider_features_template_deployment.dart';
import 'provider_features_virtual_machine.dart';
import 'provider_features_virtual_machine_scale_set.dart';

class ProviderFeatures {
  final ProviderFeaturesApiManagement? apiManagement;
  final ProviderFeaturesAppConfiguration? appConfiguration;
  final ProviderFeaturesApplicationInsights? applicationInsights;
  final ProviderFeaturesCognitiveAccount? cognitiveAccount;
  final ProviderFeaturesDatabricksWorkspace? databricksWorkspace;
  final ProviderFeaturesKeyVault? keyVault;
  final ProviderFeaturesLogAnalyticsWorkspace? logAnalyticsWorkspace;
  final ProviderFeaturesMachineLearning? machineLearning;
  final ProviderFeaturesManagedDisk? managedDisk;
  final ProviderFeaturesNetapp? netapp;
  final ProviderFeaturesPostgresqlFlexibleServer? postgresqlFlexibleServer;
  final ProviderFeaturesRecoveryService? recoveryService;
  final ProviderFeaturesRecoveryServicesVaults? recoveryServicesVaults;
  final ProviderFeaturesResourceGroup? resourceGroup;
  final ProviderFeaturesStorage? storage;
  final ProviderFeaturesSubscription? subscription;
  final ProviderFeaturesTemplateDeployment? templateDeployment;
  final ProviderFeaturesVirtualMachine? virtualMachine;
  final ProviderFeaturesVirtualMachineScaleSet? virtualMachineScaleSet;

  /// Creates a new [ProviderFeatures].
  /// [apiManagement] Optional.
  /// [appConfiguration] Optional.
  /// [applicationInsights] Optional.
  /// [cognitiveAccount] Optional.
  /// [databricksWorkspace] Optional.
  /// [keyVault] Optional.
  /// [logAnalyticsWorkspace] Optional.
  /// [machineLearning] Optional.
  /// [managedDisk] Optional.
  /// [netapp] Optional.
  /// [postgresqlFlexibleServer] Optional.
  /// [recoveryService] Optional.
  /// [recoveryServicesVaults] Optional.
  /// [resourceGroup] Optional.
  /// [storage] Optional.
  /// [subscription] Optional.
  /// [templateDeployment] Optional.
  /// [virtualMachine] Optional.
  /// [virtualMachineScaleSet] Optional.
  ProviderFeatures({
    this.apiManagement,
    this.appConfiguration,
    this.applicationInsights,
    this.cognitiveAccount,
    this.databricksWorkspace,
    this.keyVault,
    this.logAnalyticsWorkspace,
    this.machineLearning,
    this.managedDisk,
    this.netapp,
    this.postgresqlFlexibleServer,
    this.recoveryService,
    this.recoveryServicesVaults,
    this.resourceGroup,
    this.storage,
    this.subscription,
    this.templateDeployment,
    this.virtualMachine,
    this.virtualMachineScaleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagement': ?apiManagement == null ? null : apiManagement!.toMap(),
      'appConfiguration': ?appConfiguration == null ? null : appConfiguration!.toMap(),
      'applicationInsights': ?applicationInsights == null ? null : applicationInsights!.toMap(),
      'cognitiveAccount': ?cognitiveAccount == null ? null : cognitiveAccount!.toMap(),
      'databricksWorkspace': ?databricksWorkspace == null ? null : databricksWorkspace!.toMap(),
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'logAnalyticsWorkspace': ?logAnalyticsWorkspace == null ? null : logAnalyticsWorkspace!.toMap(),
      'machineLearning': ?machineLearning == null ? null : machineLearning!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'netapp': ?netapp == null ? null : netapp!.toMap(),
      'postgresqlFlexibleServer': ?postgresqlFlexibleServer == null ? null : postgresqlFlexibleServer!.toMap(),
      'recoveryService': ?recoveryService == null ? null : recoveryService!.toMap(),
      'recoveryServicesVaults': ?recoveryServicesVaults == null ? null : recoveryServicesVaults!.toMap(),
      'resourceGroup': ?resourceGroup == null ? null : resourceGroup!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
      'subscription': ?subscription == null ? null : subscription!.toMap(),
      'templateDeployment': ?templateDeployment == null ? null : templateDeployment!.toMap(),
      'virtualMachine': ?virtualMachine == null ? null : virtualMachine!.toMap(),
      'virtualMachineScaleSet': ?virtualMachineScaleSet == null ? null : virtualMachineScaleSet!.toMap(),
    };
  }

  factory ProviderFeatures.fromMap(Map<String, dynamic> map) {
    return ProviderFeatures(
      apiManagement: map['apiManagement'] == null ? null : ProviderFeaturesApiManagement.fromMap((map['apiManagement'] as Map).cast<String, dynamic>()),
      appConfiguration: map['appConfiguration'] == null ? null : ProviderFeaturesAppConfiguration.fromMap((map['appConfiguration'] as Map).cast<String, dynamic>()),
      applicationInsights: map['applicationInsights'] == null ? null : ProviderFeaturesApplicationInsights.fromMap((map['applicationInsights'] as Map).cast<String, dynamic>()),
      cognitiveAccount: map['cognitiveAccount'] == null ? null : ProviderFeaturesCognitiveAccount.fromMap((map['cognitiveAccount'] as Map).cast<String, dynamic>()),
      databricksWorkspace: map['databricksWorkspace'] == null ? null : ProviderFeaturesDatabricksWorkspace.fromMap((map['databricksWorkspace'] as Map).cast<String, dynamic>()),
      keyVault: map['keyVault'] == null ? null : ProviderFeaturesKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      logAnalyticsWorkspace: map['logAnalyticsWorkspace'] == null ? null : ProviderFeaturesLogAnalyticsWorkspace.fromMap((map['logAnalyticsWorkspace'] as Map).cast<String, dynamic>()),
      machineLearning: map['machineLearning'] == null ? null : ProviderFeaturesMachineLearning.fromMap((map['machineLearning'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : ProviderFeaturesManagedDisk.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      netapp: map['netapp'] == null ? null : ProviderFeaturesNetapp.fromMap((map['netapp'] as Map).cast<String, dynamic>()),
      postgresqlFlexibleServer: map['postgresqlFlexibleServer'] == null ? null : ProviderFeaturesPostgresqlFlexibleServer.fromMap((map['postgresqlFlexibleServer'] as Map).cast<String, dynamic>()),
      recoveryService: map['recoveryService'] == null ? null : ProviderFeaturesRecoveryService.fromMap((map['recoveryService'] as Map).cast<String, dynamic>()),
      recoveryServicesVaults: map['recoveryServicesVaults'] == null ? null : ProviderFeaturesRecoveryServicesVaults.fromMap((map['recoveryServicesVaults'] as Map).cast<String, dynamic>()),
      resourceGroup: map['resourceGroup'] == null ? null : ProviderFeaturesResourceGroup.fromMap((map['resourceGroup'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : ProviderFeaturesStorage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      subscription: map['subscription'] == null ? null : ProviderFeaturesSubscription.fromMap((map['subscription'] as Map).cast<String, dynamic>()),
      templateDeployment: map['templateDeployment'] == null ? null : ProviderFeaturesTemplateDeployment.fromMap((map['templateDeployment'] as Map).cast<String, dynamic>()),
      virtualMachine: map['virtualMachine'] == null ? null : ProviderFeaturesVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>()),
      virtualMachineScaleSet: map['virtualMachineScaleSet'] == null ? null : ProviderFeaturesVirtualMachineScaleSet.fromMap((map['virtualMachineScaleSet'] as Map).cast<String, dynamic>()),
    );
  }
}

