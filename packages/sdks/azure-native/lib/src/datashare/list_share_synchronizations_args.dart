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
    required this.accountName,
    this.filter,
    this.orderby,
    required this.resourceGroupName,
    required this.shareName,
    this.skipToken,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderby: (() { final guardedValue = map['orderby']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

