// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_list_share_subscription_source_share_synchronization_settings_args_doc}
/// Arguments for listShareSubscriptionSourceShareSynchronizationSettings.
/// {@endtemplate}
/// {@macro pulumi_datashare_list_share_subscription_source_share_synchronization_settings_args_doc}
class ListShareSubscriptionSourceShareSynchronizationSettingsArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String> shareSubscriptionName;
  /// Continuation token
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListShareSubscriptionSourceShareSynchronizationSettingsArgs].
  /// [accountName] The name of the share account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  /// [skipToken] Continuation token
  ListShareSubscriptionSourceShareSynchronizationSettingsArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    this.skipToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'skipToken': ?skipToken,
    };
  }

  factory ListShareSubscriptionSourceShareSynchronizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSourceShareSynchronizationSettingsArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken'] as String).input(),
    );
  }
}

