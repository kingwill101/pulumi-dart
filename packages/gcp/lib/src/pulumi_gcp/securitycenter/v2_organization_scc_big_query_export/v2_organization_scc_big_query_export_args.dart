// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for V2OrganizationSccBigQueryExport.
class V2OrganizationSccBigQueryExportArgs {
  /// This must be unique within the organization.
  final Input<String> bigQueryExportId;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/<span pulumi-lang-nodejs="[bigqueryDatasetId]" pulumi-lang-dotnet="[BigqueryDatasetId]" pulumi-lang-go="[bigqueryDatasetId]" pulumi-lang-python="[bigquery_dataset_id]" pulumi-lang-yaml="[bigqueryDatasetId]" pulumi-lang-java="[bigqueryDatasetId]">[bigquery_dataset_id]</span>".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final Input<String>? dataset;

  /// The description of the notification config (max of 1024 characters).
  final Input<String>? description;

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
  /// * >, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final Input<String>? filter;

  /// location Id is provided by organization. If not provided, Use global as default.
  final Input<String>? location;

  /// The resource name of this export, in the format
  /// `organizations/{{organization}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  final Input<String>? name;

  /// The organization whose Cloud Security Command Center the Big Query Export
  /// Config lives in.
  final Input<String> organization;

  V2OrganizationSccBigQueryExportArgs({
    required this.bigQueryExportId,
    this.dataset,
    this.description,
    this.filter,
    this.location,
    this.name,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organization'] = organization;
    return map;
  }

  factory V2OrganizationSccBigQueryExportArgs.fromMap(
      Map<String, dynamic> map) {
    return V2OrganizationSccBigQueryExportArgs(
      bigQueryExportId: Input.asInput<String>(map['bigQueryExportId']),
      dataset: Input.asOptionalInput<String>(map['dataset']),
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asOptionalInput<String>(map['filter']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organization: Input.asInput<String>(map['organization']),
    );
  }
}
