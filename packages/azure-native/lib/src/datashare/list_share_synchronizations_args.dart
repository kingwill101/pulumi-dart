// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_list_share_synchronizations_args_doc}
/// Arguments for listShareSynchronizations.
/// {@endtemplate}
/// {@macro pulumi_datashare_list_share_synchronizations_args_doc}
class ListShareSynchronizationsArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Filters the results using OData syntax.
  final pulumi.Input<String>? filter;
  /// Sorts the results using OData syntax.
  final pulumi.Input<String>? orderby;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;
  /// Continuation token
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListShareSynchronizationsArgs].
  /// [accountName] The name of the share account.
  /// [filter] Filters the results using OData syntax.
  /// [orderby] Sorts the results using OData syntax.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  /// [skipToken] Continuation token
  ListShareSynchronizationsArgs({
    required String accountName,
    String? filter,
    String? orderby,
    required String resourceGroupName,
    required String shareName,
    String? skipToken,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      orderby = pulumi.Input.asOptionalInput<String>(orderby),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'filter': ?filter,
      'orderby': ?orderby,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'skipToken': ?skipToken,
    };
  }

  factory ListShareSynchronizationsArgs.fromMap(Map<String, dynamic> map) {
    return ListShareSynchronizationsArgs(
      accountName: map['accountName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      orderby: map['orderby'] == null ? null : map['orderby'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
    );
  }
}

