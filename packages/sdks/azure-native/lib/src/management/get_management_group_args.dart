// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_management_group_args_doc}
/// Arguments for getManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_management_get_management_group_args_doc}
class GetManagementGroupArgs {
  /// The $expand=children query string parameter allows clients to request inclusion of children in the response payload.  $expand=path includes the path from the root group to the current group.  $expand=ancestors includes the ancestor Ids of the current group.
  final pulumi.Input<String>? expand;
  /// A filter which allows the exclusion of subscriptions from results (i.e. '$filter=children.childType ne Subscription')
  final pulumi.Input<String>? filter;
  /// Management Group ID.
  final pulumi.Input<String> groupId;
  /// The $recurse=true query string parameter allows clients to request inclusion of entire hierarchy in the response payload. Note that  $expand=children must be passed up if $recurse is set to true.
  final pulumi.Input<bool>? recurse;

  /// Creates a new [GetManagementGroupArgs].
  /// [expand] The $expand=children query string parameter allows clients to request inclusion of children in the response payload.  $expand=path includes the path from the root group to the current group.  $expand=ancestors includes the ancestor Ids of the current group.
  /// [filter] A filter which allows the exclusion of subscriptions from results (i.e. '$filter=children.childType ne Subscription')
  /// [groupId] Management Group ID.
  /// [recurse] The $recurse=true query string parameter allows clients to request inclusion of entire hierarchy in the response payload. Note that  $expand=children must be passed up if $recurse is set to true.
  GetManagementGroupArgs({
    this.expand,
    this.filter,
    required this.groupId,
    this.recurse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'filter': ?filter,
      'groupId': groupId,
      'recurse': ?recurse,
    };
  }

  factory GetManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      groupId: (map['groupId'] as String).input(),
      recurse: map['recurse'] == null ? null : (map['recurse']! as bool).input(),
    );
  }
}

