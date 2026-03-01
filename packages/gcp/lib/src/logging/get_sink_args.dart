// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_sink_get_sink_args_doc}
/// Arguments for getSink.
/// {@endtemplate}
/// {@macro pulumi_logging_get_sink_get_sink_args_doc}
class GetSinkArgs {
  /// The identifier for the resource.
  /// Examples:
  ///
  /// - `projects/[PROJECT_ID]/sinks/[SINK_NAME]`
  /// - `organizations/[ORGANIZATION_ID]/sinks/[SINK_NAME]`
  /// -  `billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_NAME]`
  /// - `folders/[FOLDER_ID]/sinks/[SINK_NAME]`
  final pulumi.Input<String> id;

  /// Creates a new [GetSinkArgs].
  /// [id] The identifier for the resource.
  GetSinkArgs({
    required String id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      id: map['id'] as String,
    );
  }
}

