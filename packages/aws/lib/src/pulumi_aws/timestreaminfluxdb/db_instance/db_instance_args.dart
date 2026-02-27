// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../db_instance_log_delivery_configuration/db_instance_log_delivery_configuration.dart';
import '../db_instance_timeouts/db_instance_timeouts.dart';

/// The set of arguments for DbInstance.
class DbInstanceArgs {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `db_storage_type` places restrictions on this argument's minimum value. The following is a list of `db_storage_type` values and the corresponding minimum value for `allocated_storage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  final pulumi.Input<int> allocatedStorage;

  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String> bucket;

  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  final pulumi.Input<String> dbInstanceType;

  /// ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `db_parameter_group_identifier`, removing `db_parameter_group_identifier` will cause the instance to be destroyed and recreated.
  final pulumi.Input<String>? dbParameterGroupIdentifier;

  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocated_storage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  final pulumi.Input<String>? dbStorageType;

  /// Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  final pulumi.Input<String>? deploymentType;

  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  final pulumi.Input<DbInstanceLogDeliveryConfiguration>?
      logDeliveryConfiguration;

  /// Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  final pulumi.Input<String>? name;

  /// Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  final pulumi.Input<String>? networkType;

  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String> organization;

  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String> password;

  /// The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  final pulumi.Input<int>? port;

  /// Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DbInstanceTimeouts>? timeouts;

  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String> username;

  /// List of VPC security group IDs to associate with the DB instance.
  final pulumi.Input<List<String>> vpcSecurityGroupIds;

  /// List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> vpcSubnetIds;

  DbInstanceArgs({
    required this.allocatedStorage,
    required this.bucket,
    required this.dbInstanceType,
    this.dbParameterGroupIdentifier,
    this.dbStorageType,
    this.deploymentType,
    this.logDeliveryConfiguration,
    this.name,
    this.networkType,
    required this.organization,
    required this.password,
    this.port,
    this.publiclyAccessible,
    this.region,
    this.tags,
    this.timeouts,
    required this.username,
    required this.vpcSecurityGroupIds,
    required this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedStorage'] = allocatedStorage;
    map['bucket'] = bucket;
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
    final logDeliveryConfigurationValue = logDeliveryConfiguration;
    if (logDeliveryConfigurationValue != null) {
      map['logDeliveryConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DbInstanceLogDeliveryConfiguration, Map<String, dynamic>>(
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
    map['organization'] = organization;
    map['password'] = password;
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DbInstanceTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['username'] = username;
    map['vpcSecurityGroupIds'] = vpcSecurityGroupIds;
    map['vpcSubnetIds'] = vpcSubnetIds;
    return map;
  }

  factory DbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceArgs(
      allocatedStorage: pulumi.Input.asInput<int>(map['allocatedStorage']),
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      dbInstanceType: pulumi.Input.asInput<String>(map['dbInstanceType']),
      dbParameterGroupIdentifier: pulumi.Input.asOptionalInput<String>(
          map['dbParameterGroupIdentifier']),
      dbStorageType: pulumi.Input.asOptionalInput<String>(map['dbStorageType']),
      deploymentType:
          pulumi.Input.asOptionalInput<String>(map['deploymentType']),
      logDeliveryConfiguration:
          pulumi.Input.asOptionalInput<DbInstanceLogDeliveryConfiguration>(
              map['logDeliveryConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkType: pulumi.Input.asOptionalInput<String>(map['networkType']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      password: pulumi.Input.asInput<String>(map['password']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<DbInstanceTimeouts>(map['timeouts']),
      username: pulumi.Input.asInput<String>(map['username']),
      vpcSecurityGroupIds:
          pulumi.Input.asInput<List<String>>(map['vpcSecurityGroupIds']),
      vpcSubnetIds: pulumi.Input.asInput<List<String>>(map['vpcSubnetIds']),
    );
  }
}
