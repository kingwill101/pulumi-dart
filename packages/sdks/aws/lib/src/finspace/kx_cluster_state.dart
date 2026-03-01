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
  /// Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See auto_scaling_configuration.
  final pulumi.Input<KxClusterAutoScalingConfiguration>? autoScalingConfiguration;
  /// The availability zone identifiers for the requested regions. Required when `az_mode` is set to SINGLE.
  final pulumi.Input<String>? availabilityZoneId;
  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * SINGLE - Assigns one availability zone per cluster.
  /// * MULTI - Assigns all the availability zones per cluster.
  final pulumi.Input<String>? azMode;
  /// Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See cache_storage_configuration.
  final pulumi.Input<List<KxClusterCacheStorageConfiguration>>? cacheStorageConfigurations;
  /// Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See capacity_configuration.
  final pulumi.Input<KxClusterCapacityConfiguration>? capacityConfiguration;
  /// Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See code.
  final pulumi.Input<KxClusterCode>? code;
  /// List of key-value pairs to make available inside the cluster.
  final pulumi.Input<Map<String, String>>? commandLineArguments;
  /// Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? createdTimestamp;
  /// KX database that will be available for querying. Defined below.
  final pulumi.Input<List<KxClusterDatabase>>? databases;
  /// Description of the cluster.
  final pulumi.Input<String>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
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
  /// Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See savedown_storage_configuration.
  final pulumi.Input<KxClusterSavedownStorageConfiguration>? savedownStorageConfiguration;
  /// The structure that stores the configuration details of a scaling group.
  final pulumi.Input<KxClusterScalingGroupConfiguration>? scalingGroupConfiguration;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? statusReason;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant , the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path.
  final pulumi.Input<List<KxClusterTickerplantLogConfiguration>>? tickerplantLogConfigurations;
  /// Type of KDB database. The following types are available:
  /// * HDB - Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed KX databases mounted to the cluster.
  /// * RDB - Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the `savedownStorageConfiguration` parameter.
  /// * GATEWAY - A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.
  /// * GP - A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only `SINGLE` AZ mode.
  /// * Tickerplant - A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.
  final pulumi.Input<String>? type;
  /// Configuration details about the network where the Privatelink endpoint of the cluster resides. See vpc_configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<KxClusterVpcConfiguration>? vpcConfiguration;

  /// Creates a new [KxClusterState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX cluster.
  /// [autoScalingConfiguration] Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See auto_scaling_configuration.
  /// [availabilityZoneId] The availability zone identifiers for the requested regions. Required when `az_mode` is set to SINGLE.
  /// [azMode] The number of availability zones you want to assign per cluster. This can be one of the following:
  /// [cacheStorageConfigurations] Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See cache_storage_configuration.
  /// [capacityConfiguration] Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See capacity_configuration.
  /// [code] Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See code.
  /// [commandLineArguments] List of key-value pairs to make available inside the cluster.
  /// [createdTimestamp] Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [databases] KX database that will be available for querying. Defined below.
  /// [description] Description of the cluster.
  /// [environmentId] Unique identifier for the KX environment.
  /// [executionRole] An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  /// [initializationScript] Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  /// [lastModifiedTimestamp] Last timestamp at which the cluster was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Unique name for the cluster that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] Version of FinSpace Managed kdb to run.
  /// [savedownStorageConfiguration] Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See savedown_storage_configuration.
  /// [scalingGroupConfiguration] The structure that stores the configuration details of a scaling group.
  /// [status] Optional.
  /// [statusReason] Optional.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tickerplantLogConfigurations] A configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant , the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path.
  /// [type] Type of KDB database. The following types are available:
  /// [vpcConfiguration] Configuration details about the network where the Privatelink endpoint of the cluster resides. See vpc_configuration.
  KxClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<KxClusterAutoScalingConfiguration>? autoScalingConfiguration,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? azMode,
    pulumi.Output<List<KxClusterCacheStorageConfiguration>>? cacheStorageConfigurations,
    pulumi.Output<KxClusterCapacityConfiguration>? capacityConfiguration,
    pulumi.Output<KxClusterCode>? code,
    pulumi.Output<Map<String, String>>? commandLineArguments,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<List<KxClusterDatabase>>? databases,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? executionRole,
    pulumi.Output<String>? initializationScript,
    pulumi.Output<String>? lastModifiedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? releaseLabel,
    pulumi.Output<KxClusterSavedownStorageConfiguration>? savedownStorageConfiguration,
    pulumi.Output<KxClusterScalingGroupConfiguration>? scalingGroupConfiguration,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<KxClusterTickerplantLogConfiguration>>? tickerplantLogConfigurations,
    pulumi.Output<String>? type,
    pulumi.Output<KxClusterVpcConfiguration>? vpcConfiguration,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoScalingConfiguration = pulumi.Input.asOptionalInput<KxClusterAutoScalingConfiguration>(autoScalingConfiguration),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      azMode = pulumi.Input.asOptionalInput<String>(azMode),
      cacheStorageConfigurations = pulumi.Input.asOptionalInput<List<KxClusterCacheStorageConfiguration>>(cacheStorageConfigurations),
      capacityConfiguration = pulumi.Input.asOptionalInput<KxClusterCapacityConfiguration>(capacityConfiguration),
      code = pulumi.Input.asOptionalInput<KxClusterCode>(code),
      commandLineArguments = pulumi.Input.asOptionalInput<Map<String, String>>(commandLineArguments),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      databases = pulumi.Input.asOptionalInput<List<KxClusterDatabase>>(databases),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
      initializationScript = pulumi.Input.asOptionalInput<String>(initializationScript),
      lastModifiedTimestamp = pulumi.Input.asOptionalInput<String>(lastModifiedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseLabel = pulumi.Input.asOptionalInput<String>(releaseLabel),
      savedownStorageConfiguration = pulumi.Input.asOptionalInput<KxClusterSavedownStorageConfiguration>(savedownStorageConfiguration),
      scalingGroupConfiguration = pulumi.Input.asOptionalInput<KxClusterScalingGroupConfiguration>(scalingGroupConfiguration),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tickerplantLogConfigurations = pulumi.Input.asOptionalInput<List<KxClusterTickerplantLogConfiguration>>(tickerplantLogConfigurations),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcConfiguration = pulumi.Input.asOptionalInput<KxClusterVpcConfiguration>(vpcConfiguration);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoScalingConfiguration: map['autoScalingConfiguration'] == null ? null : pulumi.Output.create<KxClusterAutoScalingConfiguration>(KxClusterAutoScalingConfiguration.fromMap((map['autoScalingConfiguration'] as Map).cast<String, dynamic>())),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      azMode: map['azMode'] == null ? null : pulumi.Output.create<String>(map['azMode'] as String),
      cacheStorageConfigurations: map['cacheStorageConfigurations'] == null ? null : pulumi.Output.create<List<KxClusterCacheStorageConfiguration>>(pulumi.Input.decodeList<KxClusterCacheStorageConfiguration>(map['cacheStorageConfigurations'], (value) => KxClusterCacheStorageConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      capacityConfiguration: map['capacityConfiguration'] == null ? null : pulumi.Output.create<KxClusterCapacityConfiguration>(KxClusterCapacityConfiguration.fromMap((map['capacityConfiguration'] as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : pulumi.Output.create<KxClusterCode>(KxClusterCode.fromMap((map['code'] as Map).cast<String, dynamic>())),
      commandLineArguments: map['commandLineArguments'] == null ? null : pulumi.Output.create<Map<String, String>>((map['commandLineArguments'] as Map).cast<String, String>()),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      databases: map['databases'] == null ? null : pulumi.Output.create<List<KxClusterDatabase>>(pulumi.Input.decodeList<KxClusterDatabase>(map['databases'], (value) => KxClusterDatabase.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      executionRole: map['executionRole'] == null ? null : pulumi.Output.create<String>(map['executionRole'] as String),
      initializationScript: map['initializationScript'] == null ? null : pulumi.Output.create<String>(map['initializationScript'] as String),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseLabel: map['releaseLabel'] == null ? null : pulumi.Output.create<String>(map['releaseLabel'] as String),
      savedownStorageConfiguration: map['savedownStorageConfiguration'] == null ? null : pulumi.Output.create<KxClusterSavedownStorageConfiguration>(KxClusterSavedownStorageConfiguration.fromMap((map['savedownStorageConfiguration'] as Map).cast<String, dynamic>())),
      scalingGroupConfiguration: map['scalingGroupConfiguration'] == null ? null : pulumi.Output.create<KxClusterScalingGroupConfiguration>(KxClusterScalingGroupConfiguration.fromMap((map['scalingGroupConfiguration'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tickerplantLogConfigurations: map['tickerplantLogConfigurations'] == null ? null : pulumi.Output.create<List<KxClusterTickerplantLogConfiguration>>(pulumi.Input.decodeList<KxClusterTickerplantLogConfiguration>(map['tickerplantLogConfigurations'], (value) => KxClusterTickerplantLogConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<KxClusterVpcConfiguration>(KxClusterVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

