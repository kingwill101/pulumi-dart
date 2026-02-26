import 'package:pulumi/pulumi.dart';
import 'instance_args6.dart';

/// Create an instance within a project. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.
class Instance6 extends CustomResource {
  /// A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.
  late final Output<String> createTime;

  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  late final Output<String> displayName;

  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  late final Output<Map<String, String>> labels;

  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  late final Output<String> name;
  late final Output<String> project;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The current state of the instance.
  late final Output<String> state;

  /// The type of the instance. Defaults to `PRODUCTION`.
  late final Output<String> type;

  Instance6(
    String name, {
    InstanceArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
