import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_response.dart';
import 'instance_remotebuildexecution_v1alpha_args.dart';

/// Creates a new instance in the specified region. Returns a long running operation which contains an instance on completion. While the long running operation is in progress, any call to `GetInstance` returns an instance in state `CREATING`.
/// Auto-naming is currently not supported for this resource.
class InstanceRemotebuildexecutionV1alpha extends pulumi.CustomResource {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  late final pulumi.Output<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse>
      featurePolicy;

  /// The location is a GCP region. Currently only `us-central1` is supported.
  late final pulumi.Output<String> location;

  /// Whether stack driver logging is enabled for the instance.
  late final pulumi.Output<bool> loggingEnabled;

  /// Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the instance.
  late final pulumi.Output<String> state;

  InstanceRemotebuildexecutionV1alpha(
    String name, {
    InstanceRemotebuildexecutionV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:remotebuildexecution/v1alpha:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
