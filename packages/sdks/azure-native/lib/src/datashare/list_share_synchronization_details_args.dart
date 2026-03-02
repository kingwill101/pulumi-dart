// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_list_share_synchronization_details_args_doc}
/// Arguments for listShareSynchronizationDetails.
/// {@endtemplate}
/// {@macro pulumi_datashare_list_share_synchronization_details_args_doc}
class ListShareSynchronizationDetailsArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Email of the user who created the synchronization
  final pulumi.Input<String>? consumerEmail;
  /// Name of the user who created the synchronization
  final pulumi.Input<String>? consumerName;
  /// Tenant name of the consumer who created the synchronization
  final pulumi.Input<String>? consumerTenantName;
  /// synchronization duration
  final pulumi.Input<int>? durationMs;
  /// End time of synchronization
  final pulumi.Input<String>? endTime;
  /// Filters the results using OData syntax.
  final pulumi.Input<String>? filter;
  /// message of synchronization
  final pulumi.Input<String>? message;
  /// Sorts the results using OData syntax.
  final pulumi.Input<String>? orderby;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;
  /// Continuation token
  final pulumi.Input<String>? skipToken;
  /// start time of synchronization
  final pulumi.Input<String>? startTime;
  /// Raw Status
  final pulumi.Input<String>? status;
  /// Synchronization id
  final pulumi.Input<String>? synchronizationId;

  /// Creates a new [ListShareSynchronizationDetailsArgs].
  /// [accountName] The name of the share account.
  /// [consumerEmail] Email of the user who created the synchronization
  /// [consumerName] Name of the user who created the synchronization
  /// [consumerTenantName] Tenant name of the consumer who created the synchronization
  /// [durationMs] synchronization duration
  /// [endTime] End time of synchronization
  /// [filter] Filters the results using OData syntax.
  /// [message] message of synchronization
  /// [orderby] Sorts the results using OData syntax.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  /// [skipToken] Continuation token
  /// [startTime] start time of synchronization
  /// [status] Raw Status
  /// [synchronizationId] Synchronization id
  ListShareSynchronizationDetailsArgs({
    required this.accountName,
    this.consumerEmail,
    this.consumerName,
    this.consumerTenantName,
    this.durationMs,
    this.endTime,
    this.filter,
    this.message,
    this.orderby,
    required this.resourceGroupName,
    required this.shareName,
    this.skipToken,
    this.startTime,
    this.status,
    this.synchronizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'consumerEmail': ?consumerEmail,
      'consumerName': ?consumerName,
      'consumerTenantName': ?consumerTenantName,
      'durationMs': ?durationMs,
      'endTime': ?endTime,
      'filter': ?filter,
      'message': ?message,
      'orderby': ?orderby,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'skipToken': ?skipToken,
      'startTime': ?startTime,
      'status': ?status,
      'synchronizationId': ?synchronizationId,
    };
  }

  factory ListShareSynchronizationDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListShareSynchronizationDetailsArgs(
      accountName: (map['accountName'] as String).input(),
      consumerEmail: map['consumerEmail'] == null ? null : (map['consumerEmail']! as String).input(),
      consumerName: map['consumerName'] == null ? null : (map['consumerName']! as String).input(),
      consumerTenantName: map['consumerTenantName'] == null ? null : (map['consumerTenantName']! as String).input(),
      durationMs: map['durationMs'] == null ? null : (map['durationMs']! as int).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      orderby: map['orderby'] == null ? null : (map['orderby']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      synchronizationId: map['synchronizationId'] == null ? null : (map['synchronizationId']! as String).input(),
    );
  }
}

