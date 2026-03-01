// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_pause_properties_response.dart';
import 'auto_scale_properties_response.dart';
import 'dynamic_executor_allocation_response.dart';
import 'library_info_response.dart';
import 'library_requirements_response.dart';
import 'spark_config_properties_response.dart';

/// Result data returned by getBigDataPool.
class GetBigDataPoolResult {
  /// Auto-pausing properties
  final AutoPausePropertiesResponse? autoPause;
  /// Auto-scaling properties
  final AutoScalePropertiesResponse? autoScale;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cache size
  final int? cacheSize;
  /// The time when the Big Data pool was created.
  final String creationDate;
  /// List of custom libraries/packages associated with the spark pool.
  final List<LibraryInfoResponse>? customLibraries;
  /// The default folder where Spark logs will be written.
  final String? defaultSparkLogFolder;
  /// Dynamic Executor Allocation
  final DynamicExecutorAllocationResponse? dynamicExecutorAllocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Whether autotune is required or not.
  final bool? isAutotuneEnabled;
  /// Whether compute isolation is required or not.
  final bool? isComputeIsolationEnabled;
  /// The time when the Big Data pool was updated successfully.
  final String lastSucceededTimestamp;
  /// Library version requirements
  final LibraryRequirementsResponse? libraryRequirements;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The number of nodes in the Big Data pool.
  final int? nodeCount;
  /// The level of compute power that each node in the Big Data pool has.
  final String? nodeSize;
  /// The kind of nodes that the Big Data pool provides.
  final String? nodeSizeFamily;
  /// The state of the Big Data pool.
  final String? provisioningState;
  /// Whether session level packages enabled.
  final bool? sessionLevelPackagesEnabled;
  /// Spark configuration file to specify additional properties
  final SparkConfigPropertiesResponse? sparkConfigProperties;
  /// The Spark events folder
  final String? sparkEventsFolder;
  /// The Apache Spark version.
  final String? sparkVersion;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBigDataPoolResult].
  /// [autoPause] Auto-pausing properties
  /// [autoScale] Auto-scaling properties
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cacheSize] The cache size
  /// [creationDate] The time when the Big Data pool was created.
  /// [customLibraries] List of custom libraries/packages associated with the spark pool.
  /// [defaultSparkLogFolder] The default folder where Spark logs will be written.
  /// [dynamicExecutorAllocation] Dynamic Executor Allocation
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isAutotuneEnabled] Whether autotune is required or not.
  /// [isComputeIsolationEnabled] Whether compute isolation is required or not.
  /// [lastSucceededTimestamp] The time when the Big Data pool was updated successfully.
  /// [libraryRequirements] Library version requirements
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [nodeCount] The number of nodes in the Big Data pool.
  /// [nodeSize] The level of compute power that each node in the Big Data pool has.
  /// [nodeSizeFamily] The kind of nodes that the Big Data pool provides.
  /// [provisioningState] The state of the Big Data pool.
  /// [sessionLevelPackagesEnabled] Whether session level packages enabled.
  /// [sparkConfigProperties] Spark configuration file to specify additional properties
  /// [sparkEventsFolder] The Spark events folder
  /// [sparkVersion] The Apache Spark version.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBigDataPoolResult({
    this.autoPause,
    this.autoScale,
    required this.azureApiVersion,
    this.cacheSize,
    required this.creationDate,
    this.customLibraries,
    this.defaultSparkLogFolder,
    this.dynamicExecutorAllocation,
    required this.id,
    this.isAutotuneEnabled,
    this.isComputeIsolationEnabled,
    required this.lastSucceededTimestamp,
    this.libraryRequirements,
    required this.location,
    required this.name,
    this.nodeCount,
    this.nodeSize,
    this.nodeSizeFamily,
    this.provisioningState,
    this.sessionLevelPackagesEnabled,
    this.sparkConfigProperties,
    this.sparkEventsFolder,
    this.sparkVersion,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?autoPause == null ? null : autoPause!.toMap(),
      'autoScale': ?autoScale == null ? null : autoScale!.toMap(),
      'azureApiVersion': azureApiVersion,
      'cacheSize': ?cacheSize,
      'creationDate': creationDate,
      'customLibraries': ?customLibraries == null ? null : pulumi.Input.encodeList<LibraryInfoResponse, Map<String, dynamic>>(customLibraries!, (value) => value.toMap()),
      'defaultSparkLogFolder': ?defaultSparkLogFolder,
      'dynamicExecutorAllocation': ?dynamicExecutorAllocation == null ? null : dynamicExecutorAllocation!.toMap(),
      'id': id,
      'isAutotuneEnabled': ?isAutotuneEnabled,
      'isComputeIsolationEnabled': ?isComputeIsolationEnabled,
      'lastSucceededTimestamp': lastSucceededTimestamp,
      'libraryRequirements': ?libraryRequirements == null ? null : libraryRequirements!.toMap(),
      'location': location,
      'name': name,
      'nodeCount': ?nodeCount,
      'nodeSize': ?nodeSize,
      'nodeSizeFamily': ?nodeSizeFamily,
      'provisioningState': ?provisioningState,
      'sessionLevelPackagesEnabled': ?sessionLevelPackagesEnabled,
      'sparkConfigProperties': ?sparkConfigProperties == null ? null : sparkConfigProperties!.toMap(),
      'sparkEventsFolder': ?sparkEventsFolder,
      'sparkVersion': ?sparkVersion,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBigDataPoolResult.fromMap(Map<String, dynamic> map) {
    return GetBigDataPoolResult(
      autoPause: map['autoPause'] == null ? null : AutoPausePropertiesResponse.fromMap((map['autoPause'] as Map).cast<String, dynamic>()),
      autoScale: map['autoScale'] == null ? null : AutoScalePropertiesResponse.fromMap((map['autoScale'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      cacheSize: map['cacheSize'] == null ? null : map['cacheSize'] as int,
      creationDate: map['creationDate'] as String,
      customLibraries: map['customLibraries'] == null ? null : pulumi.Input.decodeList<LibraryInfoResponse>(map['customLibraries'], (value) => LibraryInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultSparkLogFolder: map['defaultSparkLogFolder'] == null ? null : map['defaultSparkLogFolder'] as String,
      dynamicExecutorAllocation: map['dynamicExecutorAllocation'] == null ? null : DynamicExecutorAllocationResponse.fromMap((map['dynamicExecutorAllocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      isAutotuneEnabled: map['isAutotuneEnabled'] == null ? null : map['isAutotuneEnabled'] as bool,
      isComputeIsolationEnabled: map['isComputeIsolationEnabled'] == null ? null : map['isComputeIsolationEnabled'] as bool,
      lastSucceededTimestamp: map['lastSucceededTimestamp'] as String,
      libraryRequirements: map['libraryRequirements'] == null ? null : LibraryRequirementsResponse.fromMap((map['libraryRequirements'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeSize: map['nodeSize'] == null ? null : map['nodeSize'] as String,
      nodeSizeFamily: map['nodeSizeFamily'] == null ? null : map['nodeSizeFamily'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      sessionLevelPackagesEnabled: map['sessionLevelPackagesEnabled'] == null ? null : map['sessionLevelPackagesEnabled'] as bool,
      sparkConfigProperties: map['sparkConfigProperties'] == null ? null : SparkConfigPropertiesResponse.fromMap((map['sparkConfigProperties'] as Map).cast<String, dynamic>()),
      sparkEventsFolder: map['sparkEventsFolder'] == null ? null : map['sparkEventsFolder'] as String,
      sparkVersion: map['sparkVersion'] == null ? null : map['sparkVersion'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

