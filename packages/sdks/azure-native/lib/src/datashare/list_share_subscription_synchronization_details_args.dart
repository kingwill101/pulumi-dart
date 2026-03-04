// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_list_share_subscription_synchronization_details_args_doc}
/// Arguments for listShareSubscriptionSynchronizationDetails.
/// {@endtemplate}
/// {@macro pulumi_datashare_list_share_subscription_synchronization_details_args_doc}
class ListShareSubscriptionSynchronizationDetailsArgs {
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

  /// Synchronization id
  final pulumi.Input<String> synchronizationId;

  /// Creates a new [ListShareSubscriptionSynchronizationDetailsArgs].
  /// [accountName] The name of the share account.
  /// [filter] Filters the results using OData syntax.
  /// [orderby] Sorts the results using OData syntax.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription.
  /// [skipToken] Continuation token
  /// [synchronizationId] Synchronization id
  ListShareSubscriptionSynchronizationDetailsArgs({
    required this.accountName,
    this.filter,
    this.orderby,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    this.skipToken,
    required this.synchronizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'filter': ?filter,
      'orderby': ?orderby,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'skipToken': ?skipToken,
      'synchronizationId': synchronizationId,
    };
  }

  factory ListShareSubscriptionSynchronizationDetailsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListShareSubscriptionSynchronizationDetailsArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderby: (() {
        final guardedValue = map['orderby'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareSubscriptionName: pulumi.Input.fromValue(
        map['shareSubscriptionName'] as String,
      ),
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synchronizationId: pulumi.Input.fromValue(
        map['synchronizationId'] as String,
      ),
    );
  }
}
