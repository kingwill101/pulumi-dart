import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_args.dart';
import 'replica_info_response.dart';

/// Creates an instance config and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance config. The instance config name is assigned by the caller. If the named instance config already exists, `CreateInstanceConfig` returns `ALREADY_EXISTS`. Immediately after the request returns: * The instance config is readable via the API, with all requested attributes. The instance config's reconciling field is set to true. Its state is `CREATING`. While the operation is pending: * Cancelling the operation renders the instance config immediately unreadable via the API. * Except for deleting the creating resource, all other attempts to modify the instance config are rejected. Upon completion of the returned operation: * Instances can be created using the instance configuration. * The instance config's reconciling field becomes false. Its state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance config. The metadata field type is CreateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires `spanner.instanceConfigs.create` permission on the resource parent.
class InstanceConfig extends pulumi.CustomResource {
  /// Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  late final pulumi.Output<String> baseConfig;

  /// Whether this instance config is a Google or User Managed Configuration.
  late final pulumi.Output<String> configType;

  /// The name of this instance configuration as it appears in UIs.
  late final pulumi.Output<String> displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.
  late final pulumi.Output<String> etag;

  /// Describes whether free instances are available to be created in this instance config.
  late final pulumi.Output<String> freeInstanceAvailability;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  late final pulumi.Output<Map<String, String>> labels;

  /// Allowed values of the "default_leader" schema option for databases in instances that use this instance configuration.
  late final pulumi.Output<List<String>> leaderOptions;

  /// A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.
  late final pulumi.Output<String> name;

  /// The available optional replicas to choose from for user managed configurations. Populated for Google managed configurations.
  late final pulumi.Output<List<ReplicaInfoResponse>> optionalReplicas;
  late final pulumi.Output<String> project;

  /// If true, the instance config is being created or updated. If false, there are no ongoing operations for the instance config.
  late final pulumi.Output<bool> reconciling;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  late final pulumi.Output<List<ReplicaInfoResponse>> replicas;

  /// The current instance config state. Applicable only for USER_MANAGED configs.
  late final pulumi.Output<String> state;

  /// Creates a new [InstanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceConfig]. {@macro pulumi_spanner_v1_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceConfig(
    String name, {
    InstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:spanner/v1:InstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baseConfig = registerOutput<String>('baseConfig');
    this.configType = registerOutput<String>('configType');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.freeInstanceAvailability =
        registerOutput<String>('freeInstanceAvailability');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.leaderOptions = registerOutput<List<String>>('leaderOptions');
    this.name = registerOutput<String>('name');
    this.optionalReplicas =
        registerOutput<List<ReplicaInfoResponse>>('optionalReplicas');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.replicas = registerOutput<List<ReplicaInfoResponse>>('replicas');
    this.state = registerOutput<String>('state');
  }
}
