// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_organization_exclusion_args_doc}
/// The set of arguments for OrganizationExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_organization_exclusion_args_doc}
class OrganizationExclusionArgs {
  /// Optional. A description of this exclusion.
  final pulumi.Input<String>? description;

  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  final pulumi.Input<bool>? disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  final pulumi.Input<String> filter;

  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationExclusionArgs].
  /// [description] Optional. A description of this exclusion.
  /// [disabled] Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  /// [name] A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  /// [organizationId] Required.
  OrganizationExclusionArgs({
    String? description,
    bool? disabled,
    required String filter,
    String? name,
    required String organizationId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       filter = pulumi.Input.asInput<String>(filter),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory OrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationExclusionArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
