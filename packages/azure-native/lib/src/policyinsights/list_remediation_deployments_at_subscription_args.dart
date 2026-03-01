// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_list_remediation_deployments_at_subscription_args_doc}
/// Arguments for listRemediationDeploymentsAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_list_remediation_deployments_at_subscription_args_doc}
class ListRemediationDeploymentsAtSubscriptionArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// Maximum number of records to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListRemediationDeploymentsAtSubscriptionArgs].
  /// [remediationName] The name of the remediation.
  /// [top] Maximum number of records to return.
  ListRemediationDeploymentsAtSubscriptionArgs({
    required String remediationName,
    int? top,
  }) :
      remediationName = pulumi.Input.asInput<String>(remediationName),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
      'top': ?top,
    };
  }

  factory ListRemediationDeploymentsAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtSubscriptionArgs(
      remediationName: map['remediationName'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

