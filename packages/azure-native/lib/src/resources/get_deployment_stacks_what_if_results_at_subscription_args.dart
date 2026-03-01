// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stacks_what_if_results_at_subscription_args_doc}
/// Arguments for getDeploymentStacksWhatIfResultsAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_subscription_args_doc}
class GetDeploymentStacksWhatIfResultsAtSubscriptionArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String> deploymentStacksWhatIfResultName;

  /// Creates a new [GetDeploymentStacksWhatIfResultsAtSubscriptionArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  GetDeploymentStacksWhatIfResultsAtSubscriptionArgs({
    required String deploymentStacksWhatIfResultName,
  }) :
      deploymentStacksWhatIfResultName = pulumi.Input.asInput<String>(deploymentStacksWhatIfResultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStacksWhatIfResultName': deploymentStacksWhatIfResultName,
    };
  }

  factory GetDeploymentStacksWhatIfResultsAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStacksWhatIfResultsAtSubscriptionArgs(
      deploymentStacksWhatIfResultName: map['deploymentStacksWhatIfResultName'] as String,
    );
  }
}

