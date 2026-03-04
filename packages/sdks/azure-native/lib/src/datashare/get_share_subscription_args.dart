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
    required this.accountName,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
    };
  }

  factory GetShareSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetShareSubscriptionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareSubscriptionName: pulumi.Input.fromValue(
        map['shareSubscriptionName'] as String,
      ),
    );
  }
}
