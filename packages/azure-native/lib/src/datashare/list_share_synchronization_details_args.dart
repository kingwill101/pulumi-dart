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
    required String accountName,
    String? consumerEmail,
    String? consumerName,
    String? consumerTenantName,
    int? durationMs,
    String? endTime,
    String? filter,
    String? message,
    String? orderby,
    required String resourceGroupName,
    required String shareName,
    String? skipToken,
    String? startTime,
    String? status,
    String? synchronizationId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      consumerEmail = pulumi.Input.asOptionalInput<String>(consumerEmail),
      consumerName = pulumi.Input.asOptionalInput<String>(consumerName),
      consumerTenantName = pulumi.Input.asOptionalInput<String>(consumerTenantName),
      durationMs = pulumi.Input.asOptionalInput<int>(durationMs),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      message = pulumi.Input.asOptionalInput<String>(message),
      orderby = pulumi.Input.asOptionalInput<String>(orderby),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<String>(status),
      synchronizationId = pulumi.Input.asOptionalInput<String>(synchronizationId);

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
      accountName: map['accountName'] as String,
      consumerEmail: map['consumerEmail'] == null ? null : map['consumerEmail'] as String,
      consumerName: map['consumerName'] == null ? null : map['consumerName'] as String,
      consumerTenantName: map['consumerTenantName'] == null ? null : map['consumerTenantName'] as String,
      durationMs: map['durationMs'] == null ? null : map['durationMs'] as int,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      orderby: map['orderby'] == null ? null : map['orderby'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      synchronizationId: map['synchronizationId'] == null ? null : map['synchronizationId'] as String,
    );
  }
}

