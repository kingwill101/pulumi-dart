// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scoped_resource_response.dart';

/// Result data returned by getComponent.
class GetComponentResult {
  /// Application Insights Unique ID for your Application.
  final String appId;
  /// The unique ID of your application. This field mirrors the 'Name' field and cannot be changed.
  final String applicationId;
  /// Type of application being monitored.
  final String applicationType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Application Insights component connection string.
  final String connectionString;
  /// Creation Date for the Application Insights component, in ISO 8601 format.
  final String creationDate;
  /// Disable IP masking.
  final bool? disableIpMasking;
  /// Disable Non-AAD based Auth.
  final bool? disableLocalAuth;
  /// Resource etag
  final String? etag;
  /// Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
  final String? flowType;
  /// Force users to create their own storage account for profiler and debugger.
  final bool? forceCustomerStorageForProfiler;
  /// The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp.
  final String? hockeyAppId;
  /// Token used to authenticate communications with between Application Insights and HockeyApp.
  final String hockeyAppToken;
  /// Azure resource Id
  final String id;
  /// Purge data immediately after 30 days.
  final bool? immediatePurgeDataOn30Days;
  /// Indicates the flow of the ingestion.
  final String? ingestionMode;
  /// Application Insights Instrumentation key. A read-only value that applications can use to identify the destination for all telemetry sent to Azure Application Insights. This value will be supplied upon construction of each new Application Insights component.
  final String instrumentationKey;
  /// The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone.
  final String kind;
  /// The date which the component got migrated to LA, in ISO 8601 format.
  final String laMigrationDate;
  /// Resource location
  final String location;
  /// Azure resource name
  final String name;
  /// List of linked private link scope resources.
  final List<PrivateLinkScopedResourceResponse> privateLinkScopedResources;
  /// Current state of this component: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  final String provisioningState;
  /// The network access type for accessing Application Insights ingestion.
  final String? publicNetworkAccessForIngestion;
  /// The network access type for accessing Application Insights query.
  final String? publicNetworkAccessForQuery;
  /// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
  final String? requestSource;
  /// Retention period in days.
  final int? retentionInDays;
  /// Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry.
  final double? samplingPercentage;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure Tenant Id.
  final String tenantId;
  /// Azure resource type
  final String type;
  /// Resource Id of the log analytics workspace which the data will be ingested to. This property is required to create an application with this API version. Applications from older versions will not have this property.
  final String? workspaceResourceId;

  /// Creates a new [GetComponentResult].
  /// [appId] Application Insights Unique ID for your Application.
  /// [applicationId] The unique ID of your application. This field mirrors the 'Name' field and cannot be changed.
  /// [applicationType] Type of application being monitored.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionString] Application Insights component connection string.
  /// [creationDate] Creation Date for the Application Insights component, in ISO 8601 format.
  /// [disableIpMasking] Disable IP masking.
  /// [disableLocalAuth] Disable Non-AAD based Auth.
  /// [etag] Resource etag
  /// [flowType] Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
  /// [forceCustomerStorageForProfiler] Force users to create their own storage account for profiler and debugger.
  /// [hockeyAppId] The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp.
  /// [hockeyAppToken] Token used to authenticate communications with between Application Insights and HockeyApp.
  /// [id] Azure resource Id
  /// [immediatePurgeDataOn30Days] Purge data immediately after 30 days.
  /// [ingestionMode] Indicates the flow of the ingestion.
  /// [instrumentationKey] Application Insights Instrumentation key. A read-only value that applications can use to identify the destination for all telemetry sent to Azure Application Insights. This value will be supplied upon construction of each new Application Insights component.
  /// [kind] The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone.
  /// [laMigrationDate] The date which the component got migrated to LA, in ISO 8601 format.
  /// [location] Resource location
  /// [name] Azure resource name
  /// [privateLinkScopedResources] List of linked private link scope resources.
  /// [provisioningState] Current state of this component: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  /// [publicNetworkAccessForIngestion] The network access type for accessing Application Insights ingestion.
  /// [publicNetworkAccessForQuery] The network access type for accessing Application Insights query.
  /// [requestSource] Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
  /// [retentionInDays] Retention period in days.
  /// [samplingPercentage] Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry.
  /// [tags] Resource tags
  /// [tenantId] Azure Tenant Id.
  /// [type] Azure resource type
  /// [workspaceResourceId] Resource Id of the log analytics workspace which the data will be ingested to. This property is required to create an application with this API version. Applications from older versions will not have this property.
  GetComponentResult({
    required this.appId,
    required this.applicationId,
    required this.applicationType,
    required this.azureApiVersion,
    required this.connectionString,
    required this.creationDate,
    this.disableIpMasking,
    this.disableLocalAuth,
    this.etag,
    this.flowType,
    this.forceCustomerStorageForProfiler,
    this.hockeyAppId,
    required this.hockeyAppToken,
    required this.id,
    this.immediatePurgeDataOn30Days,
    this.ingestionMode,
    required this.instrumentationKey,
    required this.kind,
    required this.laMigrationDate,
    required this.location,
    required this.name,
    required this.privateLinkScopedResources,
    required this.provisioningState,
    this.publicNetworkAccessForIngestion,
    this.publicNetworkAccessForQuery,
    this.requestSource,
    this.retentionInDays,
    this.samplingPercentage,
    this.tags,
    required this.tenantId,
    required this.type,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'applicationId': applicationId,
      'applicationType': applicationType,
      'azureApiVersion': azureApiVersion,
      'connectionString': connectionString,
      'creationDate': creationDate,
      'disableIpMasking': ?disableIpMasking,
      'disableLocalAuth': ?disableLocalAuth,
      'etag': ?etag,
      'flowType': ?flowType,
      'forceCustomerStorageForProfiler': ?forceCustomerStorageForProfiler,
      'hockeyAppId': ?hockeyAppId,
      'hockeyAppToken': hockeyAppToken,
      'id': id,
      'immediatePurgeDataOn30Days': ?immediatePurgeDataOn30Days,
      'ingestionMode': ?ingestionMode,
      'instrumentationKey': instrumentationKey,
      'kind': kind,
      'laMigrationDate': laMigrationDate,
      'location': location,
      'name': name,
      'privateLinkScopedResources': pulumi.Input.encodeList<PrivateLinkScopedResourceResponse, Map<String, dynamic>>(privateLinkScopedResources, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccessForIngestion': ?publicNetworkAccessForIngestion,
      'publicNetworkAccessForQuery': ?publicNetworkAccessForQuery,
      'requestSource': ?requestSource,
      'retentionInDays': ?retentionInDays,
      'samplingPercentage': ?samplingPercentage,
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory GetComponentResult.fromMap(Map<String, dynamic> map) {
    return GetComponentResult(
      appId: map['appId'] as String,
      applicationId: map['applicationId'] as String,
      applicationType: map['applicationType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      connectionString: map['connectionString'] as String,
      creationDate: map['creationDate'] as String,
      disableIpMasking: (() { final guardedValue = map['disableIpMasking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowType: (() { final guardedValue = map['flowType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forceCustomerStorageForProfiler: (() { final guardedValue = map['forceCustomerStorageForProfiler']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hockeyAppId: (() { final guardedValue = map['hockeyAppId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hockeyAppToken: map['hockeyAppToken'] as String,
      id: map['id'] as String,
      immediatePurgeDataOn30Days: (() { final guardedValue = map['immediatePurgeDataOn30Days']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ingestionMode: (() { final guardedValue = map['ingestionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instrumentationKey: map['instrumentationKey'] as String,
      kind: map['kind'] as String,
      laMigrationDate: map['laMigrationDate'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateLinkScopedResources: pulumi.Input.decodeList<PrivateLinkScopedResourceResponse>(map['privateLinkScopedResources']!, (value) => PrivateLinkScopedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccessForIngestion: (() { final guardedValue = map['publicNetworkAccessForIngestion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessForQuery: (() { final guardedValue = map['publicNetworkAccessForQuery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestSource: (() { final guardedValue = map['requestSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      samplingPercentage: (() { final guardedValue = map['samplingPercentage']; if (guardedValue == null) return null; return guardedValue as double; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

