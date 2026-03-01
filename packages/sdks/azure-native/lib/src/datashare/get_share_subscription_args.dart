// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_share_subscription_args_doc}
/// Arguments for getShareSubscription.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_share_subscription_args_doc}
class GetShareSubscriptionArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String> shareSubscriptionName;

  /// Creates a new [GetShareSubscriptionArgs].
  /// [accountName] The name of the share account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  GetShareSubscriptionArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
    };
  }

  factory GetShareSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetShareSubscriptionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
    );
  }
}

