// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../db_cluster_log_delivery_configuration/db_cluster_log_delivery_configuration.dart';
import '../db_cluster_timeouts/db_cluster_timeouts.dart';

/// The set of arguments for DbCluster.
class DbClusterArgs {
  /// Amount of storage in GiB (gibibytes). The minimum value is <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, the maximum value is <span pulumi-lang-nodejs="`16384`" pulumi-lang-dotnet="`16384`" pulumi-lang-go="`16384`" pulumi-lang-python="`16384`" pulumi-lang-yaml="`16384`" pulumi-lang-java="`16384`">`16384`</span>. The argument <span pulumi-lang-nodejs="`dbStorageType`" pulumi-lang-dotnet="`DbStorageType`" pulumi-lang-go="`dbStorageType`" pulumi-lang-python="`db_storage_type`" pulumi-lang-yaml="`dbStorageType`" pulumi-lang-java="`dbStorageType`">`db_storage_type`</span> places restrictions on this argument's minimum value. The following is a list of <span pulumi-lang-nodejs="`dbStorageType`" pulumi-lang-dotnet="`DbStorageType`" pulumi-lang-go="`dbStorageType`" pulumi-lang-python="`db_storage_type`" pulumi-lang-yaml="`dbStorageType`" pulumi-lang-java="`dbStorageType`">`db_storage_type`</span> values and the corresponding minimum value for <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span>: `"InfluxIOIncludedT1": <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": <span pulumi-lang-nodejs="`400`" pulumi-lang-dotnet="`400`" pulumi-lang-go="`400`" pulumi-lang-python="`400`" pulumi-lang-yaml="`400`" pulumi-lang-java="`400`">`400`</span>. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final Input<int>? allocatedStorage;

  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final Input<String>? bucket;

  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  final Input<String> dbInstanceType;

  /// ID of the DB parameter group assigned to your cluster. This argument is updatable. If added to an existing Timestream for InfluxDB cluster or given a new value, will cause an in-place update to the cluster. However, if a cluster already has a value for <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span>, removing <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span> will cause the cluster to be destroyed and recreated.
  final Input<String>? dbParameterGroupIdentifier;

  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span> is 400.
  final Input<String>? dbStorageType;

  /// Specifies the type of cluster to create. Valid options are: `"MULTI_NODE_READ_REPLICAS"`. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final Input<String>? deploymentType;

  /// Specifies the behavior of failure recovery when the primary node of the cluster fails. Valid options are: `"AUTOMATIC"` and `"NO_FAILOVER"`.
  final Input<String>? failoverMode;

  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  final Input<DbClusterLogDeliveryConfiguration>? logDeliveryConfiguration;

  /// Name that uniquely identifies the DB cluster when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. Cluster names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  final Input<String>? name;

  /// Specifies whether the network type of the Timestream for InfluxDB cluster is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  final Input<String>? networkType;

  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final Input<String>? organization;

  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group) as the AWS API rejects it.
  final Input<String>? password;

  /// The port on which the cluster accepts connections. Valid values: <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>-<span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span>. Cannot be <span pulumi-lang-nodejs="`2375`" pulumi-lang-dotnet="`2375`" pulumi-lang-go="`2375`" pulumi-lang-python="`2375`" pulumi-lang-yaml="`2375`" pulumi-lang-java="`2375`">`2375`</span>-<span pulumi-lang-nodejs="`2376`" pulumi-lang-dotnet="`2376`" pulumi-lang-go="`2376`" pulumi-lang-python="`2376`" pulumi-lang-yaml="`2376`" pulumi-lang-java="`2376`">`2376`</span>, <span pulumi-lang-nodejs="`7788`" pulumi-lang-dotnet="`7788`" pulumi-lang-go="`7788`" pulumi-lang-python="`7788`" pulumi-lang-yaml="`7788`" pulumi-lang-java="`7788`">`7788`</span>-<span pulumi-lang-nodejs="`7799`" pulumi-lang-dotnet="`7799`" pulumi-lang-go="`7799`" pulumi-lang-python="`7799`" pulumi-lang-yaml="`7799`" pulumi-lang-java="`7799`">`7799`</span>, <span pulumi-lang-nodejs="`8090`" pulumi-lang-dotnet="`8090`" pulumi-lang-go="`8090`" pulumi-lang-python="`8090`" pulumi-lang-yaml="`8090`" pulumi-lang-java="`8090`">`8090`</span>, or <span pulumi-lang-nodejs="`51678`" pulumi-lang-dotnet="`51678`" pulumi-lang-go="`51678`" pulumi-lang-python="`51678`" pulumi-lang-yaml="`51678`" pulumi-lang-java="`51678`">`51678`</span>-<span pulumi-lang-nodejs="`51680`" pulumi-lang-dotnet="`51680`" pulumi-lang-go="`51680`" pulumi-lang-python="`51680`" pulumi-lang-yaml="`51680`" pulumi-lang-java="`51680`">`51680`</span>. This argument is updatable.
  final Input<int>? port;

  /// Configures the DB cluster with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<DbClusterTimeouts>? timeouts;

  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  final Input<String>? username;

  /// List of VPC security group IDs to associate with the cluster.
  final Input<List<String>> vpcSecurityGroupIds;

  /// List of VPC subnet IDs to associate with the cluster. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  final Input<List<String>> vpcSubnetIds;

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
      map['logDeliveryConfiguration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] =
          Input.mapOptionalInputValue<DbClusterTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
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
      allocatedStorage: Input.asOptionalInput<int>(map['allocatedStorage']),
      bucket: Input.asOptionalInput<String>(map['bucket']),
      dbInstanceType: Input.asInput<String>(map['dbInstanceType']),
      dbParameterGroupIdentifier:
          Input.asOptionalInput<String>(map['dbParameterGroupIdentifier']),
      dbStorageType: Input.asOptionalInput<String>(map['dbStorageType']),
      deploymentType: Input.asOptionalInput<String>(map['deploymentType']),
      failoverMode: Input.asOptionalInput<String>(map['failoverMode']),
      logDeliveryConfiguration:
          Input.asOptionalInput<DbClusterLogDeliveryConfiguration>(
              map['logDeliveryConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      organization: Input.asOptionalInput<String>(map['organization']),
      password: Input.asOptionalInput<String>(map['password']),
      port: Input.asOptionalInput<int>(map['port']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<DbClusterTimeouts>(map['timeouts']),
      username: Input.asOptionalInput<String>(map['username']),
      vpcSecurityGroupIds:
          Input.asInput<List<String>>(map['vpcSecurityGroupIds']),
      vpcSubnetIds: Input.asInput<List<String>>(map['vpcSubnetIds']),
    );
  }
}
