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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? consumerEmail,
    pulumi.Output<String>? consumerName,
    pulumi.Output<String>? consumerTenantName,
    pulumi.Output<int>? durationMs,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? message,
    pulumi.Output<String>? orderby,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    pulumi.Output<String>? skipToken,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? status,
    pulumi.Output<String>? synchronizationId,
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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      consumerEmail: map['consumerEmail'] == null ? null : pulumi.Output.create<String>(map['consumerEmail'] as String),
      consumerName: map['consumerName'] == null ? null : pulumi.Output.create<String>(map['consumerName'] as String),
      consumerTenantName: map['consumerTenantName'] == null ? null : pulumi.Output.create<String>(map['consumerTenantName'] as String),
      durationMs: map['durationMs'] == null ? null : pulumi.Output.create<int>(map['durationMs'] as int),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      orderby: map['orderby'] == null ? null : pulumi.Output.create<String>(map['orderby'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      synchronizationId: map['synchronizationId'] == null ? null : pulumi.Output.create<String>(map['synchronizationId'] as String),
    );
  }
}

