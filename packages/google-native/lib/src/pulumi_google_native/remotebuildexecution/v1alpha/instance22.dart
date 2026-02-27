import 'package:pulumi/pulumi.dart' hide Config;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_response.dart';
import 'instance_args22.dart';

/// Creates a new instance in the specified region. Returns a long running operation which contains an instance on completion. While the long running operation is in progress, any call to `GetInstance` returns an instance in state `CREATING`.
/// Auto-naming is currently not supported for this resource.
class Instance22 extends CustomResource {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  late final Output<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse>
      featurePolicy;

  /// The location is a GCP region. Currently only `us-central1` is supported.
  late final Output<String> location;

  /// Whether stack driver logging is enabled for the instance.
  late final Output<bool> loggingEnabled;

  /// Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  late final Output<String> name;
  late final Output<String> project;

  /// State of the instance.
  late final Output<String> state;

  Instance22(
    String name, {
    InstanceArgs22? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:remotebuildexecution/v1alpha:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.featurePolicy = registerOutput<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse>(
        'featurePolicy');
    this.location = registerOutput<String>('location');
    this.loggingEnabled = registerOutput<bool>('loggingEnabled');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
