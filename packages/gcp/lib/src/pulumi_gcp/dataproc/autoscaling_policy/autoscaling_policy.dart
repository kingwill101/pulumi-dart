import 'package:pulumi/pulumi.dart' as pulumi;
import '../autoscaling_policy_basic_algorithm/autoscaling_policy_basic_algorithm.dart';
import '../autoscaling_policy_secondary_worker_config/autoscaling_policy_secondary_worker_config.dart';
import '../autoscaling_policy_worker_config/autoscaling_policy_worker_config.dart';
import 'autoscaling_policy_args.dart';

/// Describes an autoscaling policy for Dataproc cluster autoscaler.
///
///
///
/// ## Example Usage
///
/// ### Dataproc Autoscaling Policy
///
///
///
///
/// ## Import
///
/// AutoscalingPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}`
///
/// * `{{project}}/{{location}}/{{policy_id}}`
///
/// * `{{location}}/{{policy_id}}`
///
/// When using the `pulumi import` command, AutoscalingPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default {{project}}/{{location}}/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default {{location}}/{{policy_id}}
/// ```
class AutoscalingPolicy extends pulumi.CustomResource {
  /// Basic algorithm for autoscaling.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicyBasicAlgorithm?> basicAlgorithm;

  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// The "resource name" of the autoscaling policy.
  late final pulumi.Output<String> name;

  /// The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 50 characters.
  late final pulumi.Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Describes how the autoscaler will operate for secondary workers.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicySecondaryWorkerConfig?>
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicyWorkerConfig?> workerConfig;

  AutoscalingPolicy(
    String name, {
    AutoscalingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicy:AutoscalingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basicAlgorithm =
        registerOutput<AutoscalingPolicyBasicAlgorithm?>('basicAlgorithm');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
    this.secondaryWorkerConfig =
        registerOutput<AutoscalingPolicySecondaryWorkerConfig?>(
            'secondaryWorkerConfig');
    this.workerConfig =
        registerOutput<AutoscalingPolicyWorkerConfig?>('workerConfig');
  }
}
