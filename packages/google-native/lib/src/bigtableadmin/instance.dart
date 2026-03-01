import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';

/// Create an instance within a project. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.
class Instance extends pulumi.CustomResource {
  /// A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.
  late final pulumi.Output<String> createTime;

  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  late final pulumi.Output<String> displayName;

  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  late final pulumi.Output<Map<String, String>> labels;

  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// The current state of the instance.
  late final pulumi.Output<String> state;

  /// The type of the instance. Defaults to `PRODUCTION`.
  late final pulumi.Output<String> type;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_bigtableadmin_v2_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigtableadmin/v2:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}
