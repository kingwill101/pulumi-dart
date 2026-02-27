// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../kx_cluster_auto_scaling_configuration/kx_cluster_auto_scaling_configuration.dart';
import '../kx_cluster_cache_storage_configuration/kx_cluster_cache_storage_configuration.dart';
import '../kx_cluster_capacity_configuration/kx_cluster_capacity_configuration.dart';
import '../kx_cluster_code/kx_cluster_code.dart';
import '../kx_cluster_database/kx_cluster_database.dart';
import '../kx_cluster_savedown_storage_configuration/kx_cluster_savedown_storage_configuration.dart';
import '../kx_cluster_scaling_group_configuration/kx_cluster_scaling_group_configuration.dart';
import '../kx_cluster_tickerplant_log_configuration/kx_cluster_tickerplant_log_configuration.dart';
import '../kx_cluster_vpc_configuration/kx_cluster_vpc_configuration.dart';

/// The set of arguments for KxCluster.
class KxClusterArgs {
  /// Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See auto_scaling_configuration.
  final Input<KxClusterAutoScalingConfiguration>? autoScalingConfiguration;

  /// The availability zone identifiers for the requested regions. Required when `az_mode` is set to SINGLE.
  final Input<String>? availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * SINGLE - Assigns one availability zone per cluster.
  /// * MULTI - Assigns all the availability zones per cluster.
  final Input<String> azMode;

  /// Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See cache_storage_configuration.
  final Input<List<KxClusterCacheStorageConfiguration>>?
      cacheStorageConfigurations;

  /// Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See capacity_configuration.
  final Input<KxClusterCapacityConfiguration>? capacityConfiguration;

  /// Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See code.
  final Input<KxClusterCode>? code;

  /// List of key-value pairs to make available inside the cluster.
  final Input<Map<String, String>>? commandLineArguments;

  /// KX database that will be available for querying. Defined below.
  final Input<List<KxClusterDatabase>>? databases;

  /// Description of the cluster.
  final Input<String>? description;

  /// Unique identifier for the KX environment.
  final Input<String> environmentId;

  /// An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  final Input<String>? executionRole;

  /// Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  final Input<String>? initializationScript;

  /// Unique name for the cluster that you want to create.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of FinSpace Managed kdb to run.
  final Input<String> releaseLabel;

  /// Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See savedown_storage_configuration.
  final Input<KxClusterSavedownStorageConfiguration>?
      savedownStorageConfiguration;

  /// The structure that stores the configuration details of a scaling group.
  final Input<KxClusterScalingGroupConfiguration>? scalingGroupConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant , the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path.
  final Input<List<KxClusterTickerplantLogConfiguration>>?
      tickerplantLogConfigurations;

  /// Type of KDB database. The following types are available:
  /// * HDB - Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed KX databases mounted to the cluster.
  /// * RDB - Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the `savedownStorageConfiguration` parameter.
  /// * GATEWAY - A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.
  /// * GP - A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only `SINGLE` AZ mode.
  /// * Tickerplant - A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.
  final Input<String> type;

  /// Configuration details about the network where the Privatelink endpoint of the cluster resides. See vpc_configuration.
  ///
  /// The following arguments are optional:
  final Input<KxClusterVpcConfiguration> vpcConfiguration;

  KxClusterArgs({
    this.autoScalingConfiguration,
    this.availabilityZoneId,
    required this.azMode,
    this.cacheStorageConfigurations,
    this.capacityConfiguration,
    this.code,
    this.commandLineArguments,
    this.databases,
    this.description,
    required this.environmentId,
    this.executionRole,
    this.initializationScript,
    this.name,
    this.region,
    required this.releaseLabel,
    this.savedownStorageConfiguration,
    this.scalingGroupConfiguration,
    this.tags,
    this.tickerplantLogConfigurations,
    required this.type,
    required this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoScalingConfigurationValue = autoScalingConfiguration;
    if (autoScalingConfigurationValue != null) {
      map['autoScalingConfiguration'] = Input.mapOptionalInputValue<
              KxClusterAutoScalingConfiguration, Map<String, dynamic>>(
          autoScalingConfigurationValue, (value) => value.toMap());
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    map['azMode'] = azMode;
    final cacheStorageConfigurationsValue = cacheStorageConfigurations;
    if (cacheStorageConfigurationsValue != null) {
      map['cacheStorageConfigurations'] = Input.mapOptionalInputValue<
              List<KxClusterCacheStorageConfiguration>,
              List<Map<String, dynamic>>>(
          cacheStorageConfigurationsValue,
          (value) => Input.encodeList<KxClusterCacheStorageConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final capacityConfigurationValue = capacityConfiguration;
    if (capacityConfigurationValue != null) {
      map['capacityConfiguration'] = Input.mapOptionalInputValue<
              KxClusterCapacityConfiguration, Map<String, dynamic>>(
          capacityConfigurationValue, (value) => value.toMap());
    }
    final codeValue = code;
    if (codeValue != null) {
      map['code'] =
          Input.mapOptionalInputValue<KxClusterCode, Map<String, dynamic>>(
              codeValue, (value) => value.toMap());
    }
    final commandLineArgumentsValue = commandLineArguments;
    if (commandLineArgumentsValue != null) {
      map['commandLineArguments'] = commandLineArgumentsValue;
    }
    final databasesValue = databases;
    if (databasesValue != null) {
      map['databases'] = Input.mapOptionalInputValue<List<KxClusterDatabase>,
              List<Map<String, dynamic>>>(
          databasesValue,
          (value) => Input.encodeList<KxClusterDatabase, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final executionRoleValue = executionRole;
    if (executionRoleValue != null) {
      map['executionRole'] = executionRoleValue;
    }
    final initializationScriptValue = initializationScript;
    if (initializationScriptValue != null) {
      map['initializationScript'] = initializationScriptValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['releaseLabel'] = releaseLabel;
    final savedownStorageConfigurationValue = savedownStorageConfiguration;
    if (savedownStorageConfigurationValue != null) {
      map['savedownStorageConfiguration'] = Input.mapOptionalInputValue<
              KxClusterSavedownStorageConfiguration, Map<String, dynamic>>(
          savedownStorageConfigurationValue, (value) => value.toMap());
    }
    final scalingGroupConfigurationValue = scalingGroupConfiguration;
    if (scalingGroupConfigurationValue != null) {
      map['scalingGroupConfiguration'] = Input.mapOptionalInputValue<
              KxClusterScalingGroupConfiguration, Map<String, dynamic>>(
          scalingGroupConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tickerplantLogConfigurationsValue = tickerplantLogConfigurations;
    if (tickerplantLogConfigurationsValue != null) {
      map['tickerplantLogConfigurations'] = Input.mapOptionalInputValue<
              List<KxClusterTickerplantLogConfiguration>,
              List<Map<String, dynamic>>>(
          tickerplantLogConfigurationsValue,
          (value) => Input.encodeList<KxClusterTickerplantLogConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['type'] = type;
    map['vpcConfiguration'] =
        Input.mapInputValue<KxClusterVpcConfiguration, Map<String, dynamic>>(
            vpcConfiguration, (value) => value.toMap());
    return map;
  }

  factory KxClusterArgs.fromMap(Map<String, dynamic> map) {
    return KxClusterArgs(
      autoScalingConfiguration:
          Input.asOptionalInput<KxClusterAutoScalingConfiguration>(
              map['autoScalingConfiguration']),
      availabilityZoneId:
          Input.asOptionalInput<String>(map['availabilityZoneId']),
      azMode: Input.asInput<String>(map['azMode']),
      cacheStorageConfigurations:
          Input.asOptionalInput<List<KxClusterCacheStorageConfiguration>>(
              map['cacheStorageConfigurations']),
      capacityConfiguration:
          Input.asOptionalInput<KxClusterCapacityConfiguration>(
              map['capacityConfiguration']),
      code: Input.asOptionalInput<KxClusterCode>(map['code']),
      commandLineArguments: Input.asOptionalInput<Map<String, String>>(
          map['commandLineArguments']),
      databases:
          Input.asOptionalInput<List<KxClusterDatabase>>(map['databases']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      executionRole: Input.asOptionalInput<String>(map['executionRole']),
      initializationScript:
          Input.asOptionalInput<String>(map['initializationScript']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      releaseLabel: Input.asInput<String>(map['releaseLabel']),
      savedownStorageConfiguration:
          Input.asOptionalInput<KxClusterSavedownStorageConfiguration>(
              map['savedownStorageConfiguration']),
      scalingGroupConfiguration:
          Input.asOptionalInput<KxClusterScalingGroupConfiguration>(
              map['scalingGroupConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tickerplantLogConfigurations:
          Input.asOptionalInput<List<KxClusterTickerplantLogConfiguration>>(
              map['tickerplantLogConfigurations']),
      type: Input.asInput<String>(map['type']),
      vpcConfiguration:
          Input.asInput<KxClusterVpcConfiguration>(map['vpcConfiguration']),
    );
  }
}
