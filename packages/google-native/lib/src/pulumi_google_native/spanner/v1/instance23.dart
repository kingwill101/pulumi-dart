import 'package:pulumi/pulumi.dart';
import 'autoscaling_config_response3.dart';
import 'free_instance_metadata_response.dart';
import 'instance_args23.dart';

/// Creates an instance and begins preparing it to begin serving. The returned long-running operation can be used to track the progress of preparing the new instance. The instance name is assigned by the caller. If the named instance already exists, `CreateInstance` returns `ALREADY_EXISTS`. Immediately upon completion of this request: * The instance is readable via the API, with all requested attributes but no allocated resources. Its state is `CREATING`. Until completion of the returned operation: * Cancelling the operation renders the instance immediately unreadable via the API. * The instance can be deleted. * All other attempts to modify the instance are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can be created in the instance. * The instance's allocated resource levels are readable via the API. * The instance's state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance. The metadata field type is CreateInstanceMetadata. The response field type is Instance, if successful.
class Instance23 extends CustomResource {
  /// Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  late final Output<AutoscalingConfigResponse3> autoscalingConfig;

  /// The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
  late final Output<String> config;

  /// The time at which the instance was created.
  late final Output<String> createTime;

  /// The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
  late final Output<String> displayName;

  /// Deprecated. This field is not populated.
  late final Output<List<String>> endpointUris;

  /// Free instance metadata. Only populated for free instances.
  late final Output<FreeInstanceMetadataResponse> freeInstanceMetadata;

  /// The `InstanceType` of the current instance.
  late final Output<String> instanceType;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  late final Output<Map<String, String>> labels;

  /// A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  late final Output<String> name;

  /// The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  late final Output<int> nodeCount;

  /// The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  late final Output<int> processingUnits;
  late final Output<String> project;

  /// The current instance state. For CreateInstance, the state must be either omitted or set to `CREATING`. For UpdateInstance, the state must be either omitted or set to `READY`.
  late final Output<String> state;

  /// The time at which the instance was most recently updated.
  late final Output<String> updateTime;

  Instance23(
    String name, {
    InstanceArgs23? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:spanner/v1:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingConfig = Output.createUnknown<AutoscalingConfigResponse3>();
    this.config = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.endpointUris = Output.createUnknown<List<String>>();
    this.freeInstanceMetadata =
        Output.createUnknown<FreeInstanceMetadataResponse>();
    this.instanceType = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.nodeCount = Output.createUnknown<int>();
    this.processingUnits = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
