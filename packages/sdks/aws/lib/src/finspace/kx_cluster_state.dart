// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_cluster_auto_scaling_configuration.dart';
import 'kx_cluster_cache_storage_configuration.dart';
import 'kx_cluster_capacity_configuration.dart';
import 'kx_cluster_code.dart';
import 'kx_cluster_database.dart';
import 'kx_cluster_savedown_storage_configuration.dart';
import 'kx_cluster_scaling_group_configuration.dart';
import 'kx_cluster_tickerplant_log_configuration.dart';
import 'kx_cluster_vpc_configuration.dart';

/// Input properties used for looking up and filtering KxCluster resources.
class KxClusterState {
  /// Amazon Resource Name (ARN) identifier of the KX cluster.
  final pulumi.Input<String>? arn;
  /// Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See `autoScalingConfiguration` Block.
  final pulumi.Input<KxClusterAutoScalingConfiguration>? autoScalingConfiguration;
  /// Availability zone identifiers for the requested regions. Required when `azMode` is set to SINGLE.
  final pulumi.Input<String>? availabilityZoneId;
  /// Number of availability zones to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  final pulumi.Input<String>? azMode;
  /// Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See `cacheStorageConfigurations` Block.
  final pulumi.Input<List<KxClusterCacheStorageConfiguration>>? cacheStorageConfigurations;
  /// Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See `capacityConfiguration` Block.
  final pulumi.Input<KxClusterCapacityConfiguration>? capacityConfiguration;
  /// Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See `code` Block.
  final pulumi.Input<KxClusterCode>? code;
  /// List of key-value pairs to make available inside the cluster.
  final pulumi.Input<Map<String, String>>? commandLineArguments;
  /// Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? createdTimestamp;
  /// KX database that will be available for querying. See `database` Block.
  final pulumi.Input<List<KxClusterDatabase>>? databases;
  /// Description of the cluster.
  final pulumi.Input<String>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  final pulumi.Input<String>? executionRole;
  /// Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  final pulumi.Input<String>? initializationScript;
  /// Last timestamp at which the cluster was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Unique name for the cluster that you want to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Version of FinSpace Managed kdb to run.
  final pulumi.Input<String>? releaseLabel;
  /// Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See `savedownStorageConfiguration` Block.
  final pulumi.Input<KxClusterSavedownStorageConfiguration>? savedownStorageConfiguration;
  /// Structure that stores the configuration details of a scaling group. See `scalingGroupConfiguration` Block.
  final pulumi.Input<KxClusterScalingGroupConfiguration>? scalingGroupConfiguration;
  /// Status of the cluster.
  final pulumi.Input<String>? status;
  /// Reason for the cluster status.
  final pulumi.Input<String>? statusReason;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant, the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path. See `tickerplantLogConfiguration` Block.
  final pulumi.Input<List<KxClusterTickerplantLogConfiguration>>? tickerplantLogConfigurations;
  /// Type of KDB database. Valid values are `HDB` (Historical Database), `RDB` (Realtime Database, which requires the `savedownStorageConfiguration` parameter), `GATEWAY`, `GP` (general purpose), and `Tickerplant`.
  final pulumi.Input<String>? type;
  /// Configuration details about the network where the Privatelink endpoint of the cluster resides. See `vpcConfiguration` Block.
  ///
  /// The following arguments are optional:
  final pulumi.Input<KxClusterVpcConfiguration>? vpcConfiguration;

  /// Creates a new [KxClusterState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX cluster.
  /// [autoScalingConfiguration] Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See `autoScalingConfiguration` Block.
  /// [availabilityZoneId] Availability zone identifiers for the requested regions. Required when `azMode` is set to SINGLE.
  /// [azMode] Number of availability zones to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  /// [cacheStorageConfigurations] Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See `cacheStorageConfigurations` Block.
  /// [capacityConfiguration] Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See `capacityConfiguration` Block.
  /// [code] Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See `code` Block.
  /// [commandLineArguments] List of key-value pairs to make available inside the cluster.
  /// [createdTimestamp] Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [databases] KX database that will be available for querying. See `database` Block.
  /// [description] Description of the cluster.
  /// [environmentId] Unique identifier for the KX environment.
  /// [executionRole] IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  /// [initializationScript] Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  /// [lastModifiedTimestamp] Last timestamp at which the cluster was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Unique name for the cluster that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] Version of FinSpace Managed kdb to run.
  /// [savedownStorageConfiguration] Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See `savedownStorageConfiguration` Block.
  /// [scalingGroupConfiguration] Structure that stores the configuration details of a scaling group. See `scalingGroupConfiguration` Block.
  /// [status] Status of the cluster.
  /// [statusReason] Reason for the cluster status.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tickerplantLogConfigurations] Configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant, the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path. See `tickerplantLogConfiguration` Block.
  /// [type] Type of KDB database. Valid values are `HDB` (Historical Database), `RDB` (Realtime Database, which requires the `savedownStorageConfiguration` parameter), `GATEWAY`, `GP` (general purpose), and `Tickerplant`.
  /// [vpcConfiguration] Configuration details about the network where the Privatelink endpoint of the cluster resides. See `vpcConfiguration` Block.
  const KxClusterState({
    this.arn,
    this.autoScalingConfiguration,
    this.availabilityZoneId,
    this.azMode,
    this.cacheStorageConfigurations,
    this.capacityConfiguration,
    this.code,
    this.commandLineArguments,
    this.createdTimestamp,
    this.databases,
    this.description,
    this.environmentId,
    this.executionRole,
    this.initializationScript,
    this.lastModifiedTimestamp,
    this.name,
    this.region,
    this.releaseLabel,
    this.savedownStorageConfiguration,
    this.scalingGroupConfiguration,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.tickerplantLogConfigurations,
    this.type,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<KxClusterAutoScalingConfiguration, Map<String, dynamic>>(autoScalingConfiguration, (value) => value.toMap()),
      'availabilityZoneId': ?availabilityZoneId,
      'azMode': ?azMode,
      'cacheStorageConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxClusterCacheStorageConfiguration>, List<Map<String, dynamic>>>(cacheStorageConfigurations, (value) => pulumi.Input.encodeList<KxClusterCacheStorageConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacityConfiguration': ?pulumi.Input.mapOptionalInputValue<KxClusterCapacityConfiguration, Map<String, dynamic>>(capacityConfiguration, (value) => value.toMap()),
      'code': ?pulumi.Input.mapOptionalInputValue<KxClusterCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'commandLineArguments': ?commandLineArguments,
      'createdTimestamp': ?createdTimestamp,
      'databases': ?pulumi.Input.mapOptionalInputValue<List<KxClusterDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<KxClusterDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'environmentId': ?environmentId,
      'executionRole': ?executionRole,
      'initializationScript': ?initializationScript,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'region': ?region,
      'releaseLabel': ?releaseLabel,
      'savedownStorageConfiguration': ?pulumi.Input.mapOptionalInputValue<KxClusterSavedownStorageConfiguration, Map<String, dynamic>>(savedownStorageConfiguration, (value) => value.toMap()),
      'scalingGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<KxClusterScalingGroupConfiguration, Map<String, dynamic>>(scalingGroupConfiguration, (value) => value.toMap()),
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tickerplantLogConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxClusterTickerplantLogConfiguration>, List<Map<String, dynamic>>>(tickerplantLogConfigurations, (value) => pulumi.Input.encodeList<KxClusterTickerplantLogConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<KxClusterVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory KxClusterState.fromMap(Map<String, dynamic> map) {
    return KxClusterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoScalingConfiguration: (() { final guardedValue = map['autoScalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterAutoScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azMode: (() { final guardedValue = map['azMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheStorageConfigurations: (() { final guardedValue = map['cacheStorageConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxClusterCacheStorageConfiguration>(guardedValue, (value) => KxClusterCacheStorageConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacityConfiguration: (() { final guardedValue = map['capacityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterCapacityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commandLineArguments: (() { final guardedValue = map['commandLineArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxClusterDatabase>(guardedValue, (value) => KxClusterDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRole: (() { final guardedValue = map['executionRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initializationScript: (() { final guardedValue = map['initializationScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTimestamp: (() { final guardedValue = map['lastModifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseLabel: (() { final guardedValue = map['releaseLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savedownStorageConfiguration: (() { final guardedValue = map['savedownStorageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterSavedownStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingGroupConfiguration: (() { final guardedValue = map['scalingGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterScalingGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tickerplantLogConfigurations: (() { final guardedValue = map['tickerplantLogConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxClusterTickerplantLogConfiguration>(guardedValue, (value) => KxClusterTickerplantLogConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxClusterVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
