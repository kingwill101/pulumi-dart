// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_configuration_assignments_for_subscription_args_doc}
/// Arguments for getConfigurationAssignmentsForSubscription.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_configuration_assignments_for_subscription_args_doc}
class GetConfigurationAssignmentsForSubscriptionArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String> configurationAssignmentName;

  /// Creates a new [GetConfigurationAssignmentsForSubscriptionArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  GetConfigurationAssignmentsForSubscriptionArgs({
    required String configurationAssignmentName,
  }) :
      configurationAssignmentName = pulumi.Input.asInput<String>(configurationAssignmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': configurationAssignmentName,
    };
  }

  factory GetConfigurationAssignmentsForSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentsForSubscriptionArgs(
      configurationAssignmentName: map['configurationAssignmentName'] as String,
    );
  }
}

