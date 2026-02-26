// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSink.
class GetSinkArgs {
  /// The identifier for the resource.
  /// Examples:
  ///
  /// - `projects/[PROJECT_ID]/sinks/[SINK_NAME]`
  /// - `organizations/[ORGANIZATION_ID]/sinks/[SINK_NAME]`
  /// -  `billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_NAME]`
  /// - `folders/[FOLDER_ID]/sinks/[SINK_NAME]`
  final Input<String> id;

  GetSinkArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      id: Input.asInput<String>(map['id']),
    );
  }
}
