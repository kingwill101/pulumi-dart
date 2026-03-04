// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_policies_get_policies_args_doc}
/// Arguments for getPolicies.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_policies_get_policies_args_doc}
class GetPoliciesArgs {
  /// The type of policies to be returned in the response. Valid values are `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  final pulumi.Input<String> filter;

  /// Creates a new [GetPoliciesArgs].
  /// [filter] The type of policies to be returned in the response. Valid values are `AISERVICES_OPT_OUT_POLICY | BACKUP_POLICY | CHATBOT_POLICY | DECLARATIVE_POLICY_EC2 | RESOURCE_CONTROL_POLICY | SERVICE_CONTROL_POLICY | TAG_POLICY`
  GetPoliciesArgs({required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter};
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
