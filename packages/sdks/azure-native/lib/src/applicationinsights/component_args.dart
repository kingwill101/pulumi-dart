// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_component_args_doc}
/// The set of arguments for Component.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_component_args_doc}
class ComponentArgs {
  /// Type of application being monitored.
  final pulumi.Input<String> applicationType;
  /// Disable IP masking.
  final pulumi.Input<bool>? disableIpMasking;
  /// Disable Non-AAD based Auth.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
  final pulumi.Input<String>? flowType;
  /// Force users to create their own storage account for profiler and debugger.
  final pulumi.Input<bool>? forceCustomerStorageForProfiler;
  /// The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp.
  final pulumi.Input<String>? hockeyAppId;
  /// Purge data immediately after 30 days.
  final pulumi.Input<bool>? immediatePurgeDataOn30Days;
  /// Indicates the flow of the ingestion.
  final pulumi.Input<String>? ingestionMode;
  /// The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone.
  final pulumi.Input<String> kind;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The network access type for accessing Application Insights ingestion.
  final pulumi.Input<String>? publicNetworkAccessForIngestion;
  /// The network access type for accessing Application Insights query.
  final pulumi.Input<String>? publicNetworkAccessForQuery;
  /// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
  final pulumi.Input<String>? requestSource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String>? resourceName;
  /// Retention period in days.
  final pulumi.Input<int>? retentionInDays;
  /// Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry.
  final pulumi.Input<double>? samplingPercentage;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource Id of the log analytics workspace which the data will be ingested to. This property is required to create an application with this API version. Applications from older versions will not have this property.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [ComponentArgs].
  /// [applicationType] Type of application being monitored.
  /// [disableIpMasking] Disable IP masking.
  /// [disableLocalAuth] Disable Non-AAD based Auth.
  /// [flowType] Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
  /// [forceCustomerStorageForProfiler] Force users to create their own storage account for profiler and debugger.
  /// [hockeyAppId] The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp.
  /// [immediatePurgeDataOn30Days] Purge data immediately after 30 days.
  /// [ingestionMode] Indicates the flow of the ingestion.
  /// [kind] The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone.
  /// [location] Resource location
  /// [publicNetworkAccessForIngestion] The network access type for accessing Application Insights ingestion.
  /// [publicNetworkAccessForQuery] The network access type for accessing Application Insights query.
  /// [requestSource] Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [retentionInDays] Retention period in days.
  /// [samplingPercentage] Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry.
  /// [tags] Resource tags
  /// [workspaceResourceId] Resource Id of the log analytics workspace which the data will be ingested to. This property is required to create an application with this API version. Applications from older versions will not have this property.
  ComponentArgs({
    required this.applicationType,
    this.disableIpMasking,
    this.disableLocalAuth,
    this.flowType,
    this.forceCustomerStorageForProfiler,
    this.hockeyAppId,
    this.immediatePurgeDataOn30Days,
    this.ingestionMode,
    required this.kind,
    this.location,
    this.publicNetworkAccessForIngestion,
    this.publicNetworkAccessForQuery,
    this.requestSource,
    required this.resourceGroupName,
    this.resourceName,
    this.retentionInDays,
    this.samplingPercentage,
    this.tags,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': applicationType,
      'disableIpMasking': ?disableIpMasking,
      'disableLocalAuth': ?disableLocalAuth,
      'flowType': ?flowType,
      'forceCustomerStorageForProfiler': ?forceCustomerStorageForProfiler,
      'hockeyAppId': ?hockeyAppId,
      'immediatePurgeDataOn30Days': ?immediatePurgeDataOn30Days,
      'ingestionMode': ?ingestionMode,
      'kind': kind,
      'location': ?location,
      'publicNetworkAccessForIngestion': ?publicNetworkAccessForIngestion,
      'publicNetworkAccessForQuery': ?publicNetworkAccessForQuery,
      'requestSource': ?requestSource,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'retentionInDays': ?retentionInDays,
      'samplingPercentage': ?samplingPercentage,
      'tags': ?tags,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory ComponentArgs.fromMap(Map<String, dynamic> map) {
    return ComponentArgs(
      applicationType: (map['applicationType'] as String).input(),
      disableIpMasking: map['disableIpMasking'] == null ? null : (map['disableIpMasking']! as bool).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      flowType: map['flowType'] == null ? null : (map['flowType']! as String).input(),
      forceCustomerStorageForProfiler: map['forceCustomerStorageForProfiler'] == null ? null : (map['forceCustomerStorageForProfiler']! as bool).input(),
      hockeyAppId: map['hockeyAppId'] == null ? null : (map['hockeyAppId']! as String).input(),
      immediatePurgeDataOn30Days: map['immediatePurgeDataOn30Days'] == null ? null : (map['immediatePurgeDataOn30Days']! as bool).input(),
      ingestionMode: map['ingestionMode'] == null ? null : (map['ingestionMode']! as String).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      publicNetworkAccessForIngestion: map['publicNetworkAccessForIngestion'] == null ? null : (map['publicNetworkAccessForIngestion']! as String).input(),
      publicNetworkAccessForQuery: map['publicNetworkAccessForQuery'] == null ? null : (map['publicNetworkAccessForQuery']! as String).input(),
      requestSource: map['requestSource'] == null ? null : (map['requestSource']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage']! as double).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId']! as String).input(),
    );
  }
}

