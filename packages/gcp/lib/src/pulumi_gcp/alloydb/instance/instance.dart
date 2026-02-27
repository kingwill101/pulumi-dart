import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_client_connection_config/instance_client_connection_config.dart';
import '../instance_connection_pool_config/instance_connection_pool_config.dart';
import '../instance_machine_config/instance_machine_config.dart';
import '../instance_network_config/instance_network_config.dart';
import '../instance_observability_config/instance_observability_config.dart';
import '../instance_psc_instance_config/instance_psc_instance_config.dart';
import '../instance_query_insights_config/instance_query_insights_config.dart';
import '../instance_read_pool_config/instance_read_pool_config.dart';
import 'instance_args.dart';

/// ## Example Usage
///
/// ### Alloydb Instance Basic
///
///
///
/// ### Alloydb Secondary Instance Basic
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{instance_id}}`
///
/// * `{{location}}/{{cluster}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default {{project}}/{{location}}/{{cluster}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/instance:Instance default {{location}}/{{cluster}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// 'Specifies whether an instance needs to spin up. Once the instance is
  /// active, the activation policy can be updated to the `NEVER` to stop the
  /// instance. Likewise, the activation policy can be updated to `ALWAYS` to
  /// start the instance.
  /// There are restrictions around when an instance can/cannot be activated (for
  /// example, a read pool instance should be stopped before stopping primary
  /// etc.). Please refer to the API documentation for more details.
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.'
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.
  late final pulumi.Output<String> activationPolicy;

  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  late final pulumi.Output<String> availabilityType;

  /// Client connection specific configurations.
  /// Structure is documented below.
  late final pulumi.Output<InstanceClientConnectionConfig>
      clientConnectionConfig;

  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  late final pulumi.Output<String> cluster;

  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  late final pulumi.Output<InstanceConnectionPoolConfig?> connectionPoolConfig;

  /// Time the Instance was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  late final pulumi.Output<Map<String, String>> databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  late final pulumi.Output<String?> gceZone;

  /// The ID of the alloydb instance.
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<String> instanceType;

  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  late final pulumi.Output<String> ipAddress;

  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMachineConfig> machineConfig;

  /// The name of the instance resource.
  late final pulumi.Output<String> name;

  /// Instance level network configuration.
  /// Structure is documented below.
  late final pulumi.Output<InstanceNetworkConfig> networkConfig;

  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  late final pulumi.Output<InstanceObservabilityConfig> observabilityConfig;

  /// The outbound public IP addresses for the instance. This is available ONLY when
  /// networkConfig.enableOutboundPublicIp is set to true. These IP addresses are used
  /// for outbound connections.
  late final pulumi.Output<List<String>> outboundPublicIpAddresses;

  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePscInstanceConfig> pscInstanceConfig;

  /// The public IP addresses for the Instance. This is available ONLY when
  /// networkConfig.enablePublicIp is set to true. This is the connection
  /// endpoint for an end-user application.
  late final pulumi.Output<String> publicIpAddress;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configuration for query insights.
  /// Structure is documented below.
  late final pulumi.Output<InstanceQueryInsightsConfig> queryInsightsConfig;

  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  late final pulumi.Output<InstanceReadPoolConfig?> readPoolConfig;

  /// Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the alloydb instance.
  late final pulumi.Output<String> state;

  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;

  /// Time the Instance was updated in UTC.
  late final pulumi.Output<String> updateTime;

  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationPolicy = registerOutput<String>('activationPolicy');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.availabilityType = registerOutput<String>('availabilityType');
    this.clientConnectionConfig =
        registerOutput<InstanceClientConnectionConfig>(
            'clientConnectionConfig');
    this.cluster = registerOutput<String>('cluster');
    this.connectionPoolConfig =
        registerOutput<InstanceConnectionPoolConfig?>('connectionPoolConfig');
    this.createTime = registerOutput<String>('createTime');
    this.databaseFlags = registerOutput<Map<String, String>>('databaseFlags');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gceZone = registerOutput<String?>('gceZone');
    this.instanceId = registerOutput<String>('instanceId');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineConfig = registerOutput<InstanceMachineConfig>('machineConfig');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<InstanceNetworkConfig>('networkConfig');
    this.observabilityConfig =
        registerOutput<InstanceObservabilityConfig>('observabilityConfig');
    this.outboundPublicIpAddresses =
        registerOutput<List<String>>('outboundPublicIpAddresses');
    this.pscInstanceConfig =
        registerOutput<InstancePscInstanceConfig>('pscInstanceConfig');
    this.publicIpAddress = registerOutput<String>('publicIpAddress');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.queryInsightsConfig =
        registerOutput<InstanceQueryInsightsConfig>('queryInsightsConfig');
    this.readPoolConfig =
        registerOutput<InstanceReadPoolConfig?>('readPoolConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
