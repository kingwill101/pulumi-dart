// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_list_share_subscription_synchronizations_args_doc}
/// Arguments for listShareSubscriptionSynchronizations.
/// {@endtemplate}
/// {@macro pulumi_datashare_list_share_subscription_synchronizations_args_doc}
class ListShareSubscriptionSynchronizationsArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Filters the results using OData syntax.
  final pulumi.Input<String>? filter;
  /// Sorts the results using OData syntax.
  final pulumi.Input<String>? orderby;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription.
  final pulumi.Input<String> shareSubscriptionName;
  /// Continuation token
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListShareSubscriptionSynchronizationsArgs].
  /// [accountName] The name of the share account.
  /// [filter] Filters the results using OData syntax.
  /// [orderby] Sorts the results using OData syntax.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription.
  /// [skipToken] Continuation token
  ListShareSubscriptionSynchronizationsArgs({
    required this.accountName,
    this.filter,
    this.orderby,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    this.skipToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'filter': ?filter,
      'orderby': ?orderby,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'skipToken': ?skipToken,
    };
  }

  factory ListShareSubscriptionSynchronizationsArgs.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationsArgs(
      accountName: (map['accountName'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      orderby: map['orderby'] == null ? null : (map['orderby'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken'] as String).input(),
    );
  }
}

