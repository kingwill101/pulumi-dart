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
    required String accountName,
    String? filter,
    String? orderby,
    required String resourceGroupName,
    required String shareSubscriptionName,
    String? skipToken,
    required String synchronizationId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      orderby = pulumi.Input.asOptionalInput<String>(orderby),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      synchronizationId = pulumi.Input.asInput<String>(synchronizationId);

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

  factory ListShareSubscriptionSynchronizationDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationDetailsArgs(
      accountName: map['accountName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      orderby: map['orderby'] == null ? null : map['orderby'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      synchronizationId: map['synchronizationId'] as String,
    );
  }
}

