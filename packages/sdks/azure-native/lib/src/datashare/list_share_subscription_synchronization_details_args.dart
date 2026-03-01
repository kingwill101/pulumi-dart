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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? orderby,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
    pulumi.Output<String>? skipToken,
    required pulumi.Output<String> synchronizationId,
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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      orderby: map['orderby'] == null ? null : pulumi.Output.create<String>(map['orderby'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
      synchronizationId: pulumi.Output.create<String>(map['synchronizationId'] as String),
    );
  }
}

