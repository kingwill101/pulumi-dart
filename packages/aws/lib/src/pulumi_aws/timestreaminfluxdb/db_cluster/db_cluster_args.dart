// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../db_cluster_log_delivery_configuration/db_cluster_log_delivery_configuration.dart';
import '../db_cluster_timeouts/db_cluster_timeouts.dart';

/// The set of arguments for DbCluster.
class DbClusterArgs {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. The argument `db_storage_type` places restrictions on this argument's minimum value. The following is a list of `db_storage_type` values and the corresponding minimum value for `allocated_storage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final pulumi.Input<int>? allocatedStorage;

  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final pulumi.Input<String>? bucket;

  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  final pulumi.Input<String> dbInstanceType;

  /// ID of the DB parameter group assigned to your cluster. This argument is updatable. If added to an existing Timestream for InfluxDB cluster or given a new value, will cause an in-place update to the cluster. However, if a cluster already has a value for `db_parameter_group_identifier`, removing `db_parameter_group_identifier` will cause the cluster to be destroyed and recreated.
  final pulumi.Input<String>? dbParameterGroupIdentifier;

  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocated_storage` is 400.
  final pulumi.Input<String>? dbStorageType;

  /// Specifies the type of cluster to create. Valid options are: `"MULTI_NODE_READ_REPLICAS"`. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final pulumi.Input<String>? deploymentType;

  /// Specifies the behavior of failure recovery when the primary node of the cluster fails. Valid options are: `"AUTOMATIC"` and `"NO_FAILOVER"`.
  final pulumi.Input<String>? failoverMode;

  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  final pulumi.Input<DbClusterLogDeliveryConfiguration>?
      logDeliveryConfiguration;

  /// Name that uniquely identifies the DB cluster when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. Cluster names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  final pulumi.Input<String>? name;

  /// Specifies whether the network type of the Timestream for InfluxDB cluster is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  final pulumi.Input<String>? networkType;

  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final pulumi.Input<String>? organization;

  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group) as the AWS API rejects it.
  final pulumi.Input<String>? password;

  /// The port on which the cluster accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  final pulumi.Input<int>? port;

  /// Configures the DB cluster with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DbClusterTimeouts>? timeouts;

  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final pulumi.Input<String>? username;

  /// List of VPC security group IDs to associate with the cluster.
  final pulumi.Input<List<String>> vpcSecurityGroupIds;

  /// List of VPC subnet IDs to associate with the cluster. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> vpcSubnetIds;

  DbClusterArgs({
    this.allocatedStorage,
    this.bucket,
    required this.dbInstanceType,
    this.dbParameterGroupIdentifier,
    this.dbStorageType,
    this.deploymentType,
    this.failoverMode,
    this.logDeliveryConfiguration,
    this.name,
    this.networkType,
    this.organization,
    this.password,
    this.port,
    this.publiclyAccessible,
    this.region,
    this.tags,
    this.timeouts,
    this.username,
    required this.vpcSecurityGroupIds,
    required this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocatedStorageValue = allocatedStorage;
    if (allocatedStorageValue != null) {
      map['allocatedStorage'] = allocatedStorageValue;
    }
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    map['dbInstanceType'] = dbInstanceType;
    final dbParameterGroupIdentifierValue = dbParameterGroupIdentifier;
    if (dbParameterGroupIdentifierValue != null) {
      map['dbParameterGroupIdentifier'] = dbParameterGroupIdentifierValue;
    }
    final dbStorageTypeValue = dbStorageType;
    if (dbStorageTypeValue != null) {
      map['dbStorageType'] = dbStorageTypeValue;
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
    }
    final failoverModeValue = failoverMode;
    if (failoverModeValue != null) {
      map['failoverMode'] = failoverModeValue;
    }
    final logDeliveryConfigurationValue = logDeliveryConfiguration;
    if (logDeliveryConfigurationValue != null) {
      map['logDeliveryConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DbClusterLogDeliveryConfiguration, Map<String, dynamic>>(
          logDeliveryConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DbClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    map['vpcSecurityGroupIds'] = vpcSecurityGroupIds;
    map['vpcSubnetIds'] = vpcSubnetIds;
    return map;
  }

  factory DbClusterArgs.fromMap(Map<String, dynamic> map) {
    return DbClusterArgs(
      allocatedStorage:
          pulumi.Input.asOptionalInput<int>(map['allocatedStorage']),
      bucket: pulumi.Input.asOptionalInput<String>(map['bucket']),
      dbInstanceType: pulumi.Input.asInput<String>(map['dbInstanceType']),
      dbParameterGroupIdentifier: pulumi.Input.asOptionalInput<String>(
          map['dbParameterGroupIdentifier']),
      dbStorageType: pulumi.Input.asOptionalInput<String>(map['dbStorageType']),
      deploymentType:
          pulumi.Input.asOptionalInput<String>(map['deploymentType']),
      failoverMode: pulumi.Input.asOptionalInput<String>(map['failoverMode']),
      logDeliveryConfiguration:
          pulumi.Input.asOptionalInput<DbClusterLogDeliveryConfiguration>(
              map['logDeliveryConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkType: pulumi.Input.asOptionalInput<String>(map['networkType']),
      organization: pulumi.Input.asOptionalInput<String>(map['organization']),
      password: pulumi.Input.asOptionalInput<String>(map['password']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<DbClusterTimeouts>(map['timeouts']),
      username: pulumi.Input.asOptionalInput<String>(map['username']),
      vpcSecurityGroupIds:
          pulumi.Input.asInput<List<String>>(map['vpcSecurityGroupIds']),
      vpcSubnetIds: pulumi.Input.asInput<List<String>>(map['vpcSubnetIds']),
    );
  }
}
