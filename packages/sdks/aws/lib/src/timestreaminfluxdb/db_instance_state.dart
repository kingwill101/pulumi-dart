// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_log_delivery_configuration.dart';
import 'db_instance_timeouts.dart';

/// Input properties used for looking up and filtering DbInstance resources.
class DbInstanceState {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `db_storage_type` places restrictions on this argument's minimum value. The following is a list of `db_storage_type` values and the corresponding minimum value for `allocated_storage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  final pulumi.Input<int>? allocatedStorage;
  /// ARN of the Timestream for InfluxDB Instance.
  final pulumi.Input<String>? arn;
  /// Availability Zone in which the DB instance resides.
  final pulumi.Input<String>? availabilityZone;
  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String>? bucket;
  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  final pulumi.Input<String>? dbInstanceType;
  /// ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `db_parameter_group_identifier`, removing `db_parameter_group_identifier` will cause the instance to be destroyed and recreated.
  final pulumi.Input<String>? dbParameterGroupIdentifier;
  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocated_storage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  final pulumi.Input<String>? dbStorageType;
  /// Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  final pulumi.Input<String>? deploymentType;
  /// Endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.
  final pulumi.Input<String>? endpoint;
  /// ARN of the AWS Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.
  final pulumi.Input<String>? influxAuthParametersSecretArn;
  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  final pulumi.Input<DbInstanceLogDeliveryConfiguration>? logDeliveryConfiguration;
  /// Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  final pulumi.Input<String>? name;
  /// Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  final pulumi.Input<String>? networkType;
  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String>? organization;
  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String>? password;
  /// The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  final pulumi.Input<int>? port;
  /// Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.
  final pulumi.Input<String>? secondaryAvailabilityZone;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<DbInstanceTimeouts>? timeouts;
  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  final pulumi.Input<String>? username;
  /// List of VPC security group IDs to associate with the DB instance.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? vpcSubnetIds;

  /// Creates a new [DbInstanceState].
  /// [allocatedStorage] Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `db_storage_type` places restrictions on this argument's minimum value. The following is a list of `db_storage_type` values and the corresponding minimum value for `allocated_storage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  /// [arn] ARN of the Timestream for InfluxDB Instance.
  /// [availabilityZone] Availability Zone in which the DB instance resides.
  /// [bucket] Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  /// [dbInstanceType] Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  /// [dbParameterGroupIdentifier] ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `db_parameter_group_identifier`, removing `db_parameter_group_identifier` will cause the instance to be destroyed and recreated.
  /// [dbStorageType] Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocated_storage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  /// [deploymentType] Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  /// [endpoint] Endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.
  /// [influxAuthParametersSecretArn] ARN of the AWS Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.
  /// [logDeliveryConfiguration] Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  /// [name] Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  /// [networkType] Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  /// [organization] Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  /// [password] Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  /// [port] The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  /// [publiclyAccessible] Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryAvailabilityZone] Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [username] Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influx_auth_parameters_secret_arn` attribute.
  /// [vpcSecurityGroupIds] List of VPC security group IDs to associate with the DB instance.
  /// [vpcSubnetIds] List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  DbInstanceState({
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? dbInstanceType,
    pulumi.Output<String>? dbParameterGroupIdentifier,
    pulumi.Output<String>? dbStorageType,
    pulumi.Output<String>? deploymentType,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? influxAuthParametersSecretArn,
    pulumi.Output<DbInstanceLogDeliveryConfiguration>? logDeliveryConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secondaryAvailabilityZone,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DbInstanceTimeouts>? timeouts,
    pulumi.Output<String>? username,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
    pulumi.Output<List<String>>? vpcSubnetIds,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      dbInstanceType = pulumi.Input.asOptionalInput<String>(dbInstanceType),
      dbParameterGroupIdentifier = pulumi.Input.asOptionalInput<String>(dbParameterGroupIdentifier),
      dbStorageType = pulumi.Input.asOptionalInput<String>(dbStorageType),
      deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      influxAuthParametersSecretArn = pulumi.Input.asOptionalInput<String>(influxAuthParametersSecretArn),
      logDeliveryConfiguration = pulumi.Input.asOptionalInput<DbInstanceLogDeliveryConfiguration>(logDeliveryConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryAvailabilityZone = pulumi.Input.asOptionalInput<String>(secondaryAvailabilityZone),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<DbInstanceTimeouts>(timeouts),
      username = pulumi.Input.asOptionalInput<String>(username),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds),
      vpcSubnetIds = pulumi.Input.asOptionalInput<List<String>>(vpcSubnetIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'bucket': ?bucket,
      'dbInstanceType': ?dbInstanceType,
      'dbParameterGroupIdentifier': ?dbParameterGroupIdentifier,
      'dbStorageType': ?dbStorageType,
      'deploymentType': ?deploymentType,
      'endpoint': ?endpoint,
      'influxAuthParametersSecretArn': ?influxAuthParametersSecretArn,
      'logDeliveryConfiguration': ?pulumi.Input.mapOptionalInputValue<DbInstanceLogDeliveryConfiguration, Map<String, dynamic>>(logDeliveryConfiguration, (value) => value.toMap()),
      'name': ?name,
      'networkType': ?networkType,
      'organization': ?organization,
      'password': ?password,
      'port': ?port,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'secondaryAvailabilityZone': ?secondaryAvailabilityZone,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DbInstanceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'username': ?username,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': ?vpcSubnetIds,
    };
  }

  factory DbInstanceState.fromMap(Map<String, dynamic> map) {
    return DbInstanceState(
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      dbInstanceType: map['dbInstanceType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceType'] as String),
      dbParameterGroupIdentifier: map['dbParameterGroupIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbParameterGroupIdentifier'] as String),
      dbStorageType: map['dbStorageType'] == null ? null : pulumi.Output.create<String>(map['dbStorageType'] as String),
      deploymentType: map['deploymentType'] == null ? null : pulumi.Output.create<String>(map['deploymentType'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      influxAuthParametersSecretArn: map['influxAuthParametersSecretArn'] == null ? null : pulumi.Output.create<String>(map['influxAuthParametersSecretArn'] as String),
      logDeliveryConfiguration: map['logDeliveryConfiguration'] == null ? null : pulumi.Output.create<DbInstanceLogDeliveryConfiguration>(DbInstanceLogDeliveryConfiguration.fromMap((map['logDeliveryConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryAvailabilityZone: map['secondaryAvailabilityZone'] == null ? null : pulumi.Output.create<String>(map['secondaryAvailabilityZone'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DbInstanceTimeouts>(DbInstanceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
      vpcSubnetIds: map['vpcSubnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSubnetIds'] as List).cast<String>()),
    );
  }
}

