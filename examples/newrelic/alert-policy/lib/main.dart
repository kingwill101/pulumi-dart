import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_newrelic/index.dart' as newrelic;

class NewRelicAlertPolicyStack extends pulumi.Stack {
  NewRelicAlertPolicyStack() : super() {
    final config = pulumi.Config();
    final policyName = config.get('policyName') ?? 'pulumi-dart-policy';
    final incidentPreference = config.get('incidentPreference') ?? 'PER_POLICY';

    final policy = newrelic.AlertPolicy(
      'policy',
      args: newrelic.AlertPolicyArgs(
        name: policyName.output(),
        incidentPreference: incidentPreference.output(),
      ),
    );

    registerOutputs({
      'name': policy.name,
      'incidentPreference': policy.incidentPreference,
      'policyId': policy.id,
    });
  }
}
