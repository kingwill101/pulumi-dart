// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_sns_subscription_args_doc}
/// Arguments for getSnsSubscription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_sns_subscription_args_doc}
class GetSnsSubscriptionArgs {
  /// Name of SnsSubscription
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSnsSubscriptionArgs].
  /// [name] Name of SnsSubscription
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetSnsSubscriptionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSnsSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSnsSubscriptionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

