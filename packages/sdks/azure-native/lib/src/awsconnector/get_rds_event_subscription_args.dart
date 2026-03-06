// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_rds_event_subscription_args_doc}
/// Arguments for getRdsEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_rds_event_subscription_args_doc}
class GetRdsEventSubscriptionArgs {
  /// Name of RdsEventSubscription
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRdsEventSubscriptionArgs].
  /// [name] Name of RdsEventSubscription
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRdsEventSubscriptionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRdsEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsEventSubscriptionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

