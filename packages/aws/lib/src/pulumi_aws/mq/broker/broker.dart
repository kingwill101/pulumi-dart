import 'package:pulumi/pulumi.dart' as pulumi;
import '../broker_configuration/broker_configuration.dart';
import '../broker_encryption_options/broker_encryption_options.dart';
import '../broker_instance/broker_instance.dart';
import '../broker_ldap_server_metadata/broker_ldap_server_metadata.dart';
import '../broker_logs/broker_logs.dart';
import '../broker_maintenance_window_start_time/broker_maintenance_window_start_time.dart';
import '../broker_user/broker_user.dart';
import 'broker_args.dart';

/// Manages an AWS MQ broker. Use to create and manage message brokers for ActiveMQ and RabbitMQ engines.
///
/// > For more information on Amazon MQ, see [Amazon MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/welcome.html).
///
/// > **Note:** For RabbitMQ brokers, only one administrative user can be created during provisioning. Additional users must be created via the [RabbitMQ Management API](https://www.rabbitmq.com/management.html) or the Amazon MQ console after the broker is provisioned. Terraform cannot update or manage users after broker creation. Any changes to the `user` block will trigger full broker recreation. Amazon MQ does not return RabbitMQ user information via APIs, meaning drift of the `user` attribute can not be detected.
///
/// !> **Warning:** Amazon MQ currently places limits on **RabbitMQ** brokers. For example, a RabbitMQ broker cannot have: instances with an associated IP address of an ENI attached to the broker, an associated LDAP server to authenticate and authorize broker connections, storage type `EFS`, or audit logging. Although this resource allows you to create RabbitMQ users, RabbitMQ users cannot have console access or groups.
///
/// !> **Warning:** All arguments including the username and password will be stored in the raw state as plain-text. > **Note:** Changes to an MQ Broker can occur when you change a parameter, such as `configuration` or `user`, and are reflected in the next maintenance window. Because of this, Terraform may report a difference in its planning phase because a modification has not yet taken place. You can use the `apply_immediately` flag to instruct the service to apply the change immediately (see documentation below). Using `apply_immediately` can result in a brief downtime as the broker reboots.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### High-throughput Optimized Example
///
///
///
/// ### Cross-Region Data Replication
///
///
///
/// See the [AWS MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/crdr-for-active-mq.html) on cross-region data replication for additional details.
///
/// ## Import
///
/// Using `pulumi import`, import MQ Brokers using their broker id. For example:
///
/// ```sh
/// $ pulumi import aws:mq/broker:Broker example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Broker extends pulumi.CustomResource {
  /// Whether to apply broker modifications immediately. Default is `false`.
  late final pulumi.Output<bool?> applyImmediately;

  /// ARN of the broker.
  late final pulumi.Output<String> arn;

  /// Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engine_type` `RabbitMQ`.
  late final pulumi.Output<String> authenticationStrategy;

  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;

  /// Name of the broker.
  late final pulumi.Output<String> brokerName;

  /// Configuration block for broker configuration. Applies to `engine_type` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  late final pulumi.Output<BrokerConfiguration> configuration;

  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  late final pulumi.Output<String> dataReplicationMode;

  /// ARN of the primary broker used to replicate data in a data replication pair. Required when `data_replication_mode` is `CRDR`.
  late final pulumi.Output<String?> dataReplicationPrimaryBrokerArn;

  /// Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  late final pulumi.Output<String?> deploymentMode;

  /// Configuration block containing encryption options. Detailed below.
  late final pulumi.Output<BrokerEncryptionOptions?> encryptionOptions;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final pulumi.Output<String> engineType;

  /// Version of the broker engine.
  late final pulumi.Output<String> engineVersion;

  /// Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  late final pulumi.Output<String> hostInstanceType;

  /// List of information about allocated brokers (both active & standby).
  late final pulumi.Output<List<BrokerInstance>> instances;

  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engine_type` `RabbitMQ`. Detailed below.
  late final pulumi.Output<BrokerLdapServerMetadata?> ldapServerMetadata;

  /// Configuration block for the logging configuration. Detailed below.
  late final pulumi.Output<BrokerLogs?> logs;

  /// Configuration block for the maintenance window start time. Detailed below.
  late final pulumi.Output<BrokerMaintenanceWindowStartTime>
      maintenanceWindowStartTime;

  /// Data replication mode that will be applied after reboot.
  late final pulumi.Output<String> pendingDataReplicationMode;

  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  late final pulumi.Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of security group IDs assigned to the broker.
  late final pulumi.Output<List<String>?> securityGroups;

  /// Storage type of the broker. For `engine_type` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engine_type` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  late final pulumi.Output<String> storageType;

  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  late final pulumi.Output<List<String>> subnetIds;

  /// Map of tags to assign to the broker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for broker users. For `engine_type` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<BrokerUser>> users;

  Broker(
    String name, {
    BrokerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/broker:Broker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.authenticationStrategy =
        registerOutput<String>('authenticationStrategy');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.brokerName = registerOutput<String>('brokerName');
    this.configuration = registerOutput<BrokerConfiguration>('configuration');
    this.dataReplicationMode = registerOutput<String>('dataReplicationMode');
    this.dataReplicationPrimaryBrokerArn =
        registerOutput<String?>('dataReplicationPrimaryBrokerArn');
    this.deploymentMode = registerOutput<String?>('deploymentMode');
    this.encryptionOptions =
        registerOutput<BrokerEncryptionOptions?>('encryptionOptions');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.hostInstanceType = registerOutput<String>('hostInstanceType');
    this.instances = registerOutput<List<BrokerInstance>>('instances');
    this.ldapServerMetadata =
        registerOutput<BrokerLdapServerMetadata?>('ldapServerMetadata');
    this.logs = registerOutput<BrokerLogs?>('logs');
    this.maintenanceWindowStartTime =
        registerOutput<BrokerMaintenanceWindowStartTime>(
            'maintenanceWindowStartTime');
    this.pendingDataReplicationMode =
        registerOutput<String>('pendingDataReplicationMode');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>?>('securityGroups');
    this.storageType = registerOutput<String>('storageType');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.users = registerOutput<List<BrokerUser>>('users');
  }
}
