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
  const ComponentArgs({
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
      applicationType: pulumi.Input.fromValue(map['applicationType'] as String),
      disableIpMasking: (() { final guardedValue = map['disableIpMasking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flowType: (() { final guardedValue = map['flowType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceCustomerStorageForProfiler: (() { final guardedValue = map['forceCustomerStorageForProfiler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hockeyAppId: (() { final guardedValue = map['hockeyAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immediatePurgeDataOn30Days: (() { final guardedValue = map['immediatePurgeDataOn30Days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ingestionMode: (() { final guardedValue = map['ingestionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessForIngestion: (() { final guardedValue = map['publicNetworkAccessForIngestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessForQuery: (() { final guardedValue = map['publicNetworkAccessForQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestSource: (() { final guardedValue = map['requestSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      samplingPercentage: (() { final guardedValue = map['samplingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
