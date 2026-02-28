// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_organization_scc_big_query_export_organization_scc_big_query_export_args_doc}
/// The set of arguments for OrganizationSccBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_organization_scc_big_query_export_organization_scc_big_query_export_args_doc}
class OrganizationSccBigQueryExportArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> bigQueryExportId;
  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String>? dataset;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form <field> <operator> <value> and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * \>, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String>? filter;
  /// The organization whose Cloud Security Command Center the Big Query Export
  /// Config lives in.
  final pulumi.Input<String> organization;

  /// Creates a new [OrganizationSccBigQueryExportArgs].
  /// [bigQueryExportId] This must be unique within the organization.
  /// [dataset] The dataset to write findings' updates to.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update
  /// [organization] The organization whose Cloud Security Command Center the Big Query Export
  OrganizationSccBigQueryExportArgs({
    required String bigQueryExportId,
    String? dataset,
    String? description,
    String? filter,
    required String organization,
  }) :
      bigQueryExportId = pulumi.Input.asInput<String>(bigQueryExportId),
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'organization': organization,
    };
  }

  factory OrganizationSccBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSccBigQueryExportArgs(
      bigQueryExportId: map['bigQueryExportId'] as String,
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      organization: map['organization'] as String,
    );
  }
}

