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
    required pulumi.Output<String> applicationType,
    pulumi.Output<bool>? disableIpMasking,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<String>? flowType,
    pulumi.Output<bool>? forceCustomerStorageForProfiler,
    pulumi.Output<String>? hockeyAppId,
    pulumi.Output<bool>? immediatePurgeDataOn30Days,
    pulumi.Output<String>? ingestionMode,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicNetworkAccessForIngestion,
    pulumi.Output<String>? publicNetworkAccessForQuery,
    pulumi.Output<String>? requestSource,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<double>? samplingPercentage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceResourceId,
  }) :
      applicationType = pulumi.Input.asInput<String>(applicationType),
      disableIpMasking = pulumi.Input.asOptionalInput<bool>(disableIpMasking),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      flowType = pulumi.Input.asOptionalInput<String>(flowType),
      forceCustomerStorageForProfiler = pulumi.Input.asOptionalInput<bool>(forceCustomerStorageForProfiler),
      hockeyAppId = pulumi.Input.asOptionalInput<String>(hockeyAppId),
      immediatePurgeDataOn30Days = pulumi.Input.asOptionalInput<bool>(immediatePurgeDataOn30Days),
      ingestionMode = pulumi.Input.asOptionalInput<String>(ingestionMode),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccessForIngestion = pulumi.Input.asOptionalInput<String>(publicNetworkAccessForIngestion),
      publicNetworkAccessForQuery = pulumi.Input.asOptionalInput<String>(publicNetworkAccessForQuery),
      requestSource = pulumi.Input.asOptionalInput<String>(requestSource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      samplingPercentage = pulumi.Input.asOptionalInput<double>(samplingPercentage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceResourceId = pulumi.Input.asOptionalInput<String>(workspaceResourceId);

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
      applicationType: pulumi.Output.create<String>(map['applicationType'] as String),
      disableIpMasking: map['disableIpMasking'] == null ? null : pulumi.Output.create<bool>(map['disableIpMasking'] as bool),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      flowType: map['flowType'] == null ? null : pulumi.Output.create<String>(map['flowType'] as String),
      forceCustomerStorageForProfiler: map['forceCustomerStorageForProfiler'] == null ? null : pulumi.Output.create<bool>(map['forceCustomerStorageForProfiler'] as bool),
      hockeyAppId: map['hockeyAppId'] == null ? null : pulumi.Output.create<String>(map['hockeyAppId'] as String),
      immediatePurgeDataOn30Days: map['immediatePurgeDataOn30Days'] == null ? null : pulumi.Output.create<bool>(map['immediatePurgeDataOn30Days'] as bool),
      ingestionMode: map['ingestionMode'] == null ? null : pulumi.Output.create<String>(map['ingestionMode'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicNetworkAccessForIngestion: map['publicNetworkAccessForIngestion'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccessForIngestion'] as String),
      publicNetworkAccessForQuery: map['publicNetworkAccessForQuery'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccessForQuery'] as String),
      requestSource: map['requestSource'] == null ? null : pulumi.Output.create<String>(map['requestSource'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      samplingPercentage: map['samplingPercentage'] == null ? null : pulumi.Output.create<double>(map['samplingPercentage'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : pulumi.Output.create<String>(map['workspaceResourceId'] as String),
    );
  }
}

