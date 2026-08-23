// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_log_delivery_configuration.dart';
import 'db_instance_maintenance_schedule.dart';
import 'db_instance_timeouts.dart';

/// {@template pulumi_timestreaminfluxdb_db_instance_db_instance_args_doc}
/// The set of arguments for DbInstance.
/// {@endtemplate}
/// {@macro pulumi_timestreaminfluxdb_db_instance_db_instance_args_doc}
class DbInstanceArgs {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `dbStorageType` places restrictions on this argument's minimum value. The following is a list of `dbStorageType` values and the corresponding minimum value for `allocatedStorage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  final pulumi.Input<int> allocatedStorage;
  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  final pulumi.Input<String> bucket;
  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  final pulumi.Input<String> dbInstanceType;
  /// ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `dbParameterGroupIdentifier`, removing `dbParameterGroupIdentifier` will cause the instance to be destroyed and recreated.
  final pulumi.Input<String>? dbParameterGroupIdentifier;
  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocatedStorage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  final pulumi.Input<String>? dbStorageType;
  /// Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  final pulumi.Input<String>? deploymentType;
  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  final pulumi.Input<DbInstanceLogDeliveryConfiguration>? logDeliveryConfiguration;
  /// Maintenance schedule for the DB instance, including the preferred maintenance window and timezone. This argument is updatable.
  final pulumi.Input<DbInstanceMaintenanceSchedule>? maintenanceSchedule;
  /// Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  final pulumi.Input<String>? name;
  /// Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  final pulumi.Input<String>? networkType;
  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  final pulumi.Input<String> organization;
  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  final pulumi.Input<String> password;
  /// The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  final pulumi.Input<int>? port;
  /// Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DbInstanceTimeouts>? timeouts;
  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  final pulumi.Input<String> username;
  /// List of VPC security group IDs to associate with the DB instance.
  final pulumi.Input<List<String>> vpcSecurityGroupIds;
  /// List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> vpcSubnetIds;

  /// Creates a new [DbInstanceArgs].
  /// [allocatedStorage] Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `dbStorageType` places restrictions on this argument's minimum value. The following is a list of `dbStorageType` values and the corresponding minimum value for `allocatedStorage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  /// [bucket] Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  /// [dbInstanceType] Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  /// [dbParameterGroupIdentifier] ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `dbParameterGroupIdentifier`, removing `dbParameterGroupIdentifier` will cause the instance to be destroyed and recreated.
  /// [dbStorageType] Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocatedStorage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  /// [deploymentType] Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  /// [logDeliveryConfiguration] Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  /// [maintenanceSchedule] Maintenance schedule for the DB instance, including the preferred maintenance window and timezone. This argument is updatable.
  /// [name] Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  /// [networkType] Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  /// [organization] Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  /// [password] Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  /// [port] The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  /// [publiclyAccessible] Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [username] Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  /// [vpcSecurityGroupIds] List of VPC security group IDs to associate with the DB instance.
  /// [vpcSubnetIds] List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  const DbInstanceArgs({
    required this.allocatedStorage,
    required this.bucket,
    required this.dbInstanceType,
    this.dbParameterGroupIdentifier,
    this.dbStorageType,
    this.deploymentType,
    this.logDeliveryConfiguration,
    this.maintenanceSchedule,
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
    return <String, dynamic>{
      'allocatedStorage': allocatedStorage,
      'bucket': bucket,
      'dbInstanceType': dbInstanceType,
      'dbParameterGroupIdentifier': ?dbParameterGroupIdentifier,
      'dbStorageType': ?dbStorageType,
      'deploymentType': ?deploymentType,
      'logDeliveryConfiguration': ?pulumi.Input.mapOptionalInputValue<DbInstanceLogDeliveryConfiguration, Map<String, dynamic>>(logDeliveryConfiguration, (value) => value.toMap()),
      'maintenanceSchedule': ?pulumi.Input.mapOptionalInputValue<DbInstanceMaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedule, (value) => value.toMap()),
      'name': ?name,
      'networkType': ?networkType,
      'organization': organization,
      'password': password,
      'port': ?port,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DbInstanceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'username': username,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
      'vpcSubnetIds': vpcSubnetIds,
    };
  }

  factory DbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceArgs(
      allocatedStorage: pulumi.Input.fromValue(map['allocatedStorage'] as int),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      dbInstanceType: pulumi.Input.fromValue(map['dbInstanceType'] as String),
      dbParameterGroupIdentifier: (() { final guardedValue = map['dbParameterGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbStorageType: (() { final guardedValue = map['dbStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDeliveryConfiguration: (() { final guardedValue = map['logDeliveryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbInstanceLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceSchedule: (() { final guardedValue = map['maintenanceSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbInstanceMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbInstanceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
      vpcSecurityGroupIds: pulumi.Input.fromValue((map['vpcSecurityGroupIds'] as List).cast<String>()),
      vpcSubnetIds: pulumi.Input.fromValue((map['vpcSubnetIds'] as List).cast<String>()),
    );
  }
}
