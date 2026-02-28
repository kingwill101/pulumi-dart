// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_storage_config_hybrid_options_table_options.dart';

class PreventionJobTriggerInspectJobStorageConfigHybridOptions {
  /// A short description of where the data is coming from. Will be stored once in the job. 256 max length.
  final String? description;
  /// To organize findings, these labels will be added to each finding.
  /// Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z?`.
  /// Label values must be between 0 and 63 characters long and must conform to the regular expression `(a-z?)?`.
  /// No more than 10 labels can be associated with a given finding.
  /// Examples:
  /// * `"environment" : "production"`
  /// * `"pipeline" : "etl"`
  final Map<String, String>? labels;
  /// These are labels that each inspection request must include within their 'finding_labels' map. Request
  /// may contain others, but any missing one of these will be rejected.
  /// Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z?`.
  /// No more than 10 keys can be required.
  final List<String>? requiredFindingLabelKeys;
  /// If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions? tableOptions;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigHybridOptions].
  /// [description] A short description of where the data is coming from. Will be stored once in the job. 256 max length.
  /// [labels] To organize findings, these labels will be added to each finding.
  /// [requiredFindingLabelKeys] These are labels that each inspection request must include within their 'finding_labels' map. Request
  /// [tableOptions] If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.
  PreventionJobTriggerInspectJobStorageConfigHybridOptions({
    this.description,
    this.labels,
    this.requiredFindingLabelKeys,
    this.tableOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'requiredFindingLabelKeys': ?requiredFindingLabelKeys,
      'tableOptions': ?tableOptions == null ? null : tableOptions!.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigHybridOptions.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigHybridOptions(
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      requiredFindingLabelKeys: map['requiredFindingLabelKeys'] == null ? null : (map['requiredFindingLabelKeys'] as List).cast<String>(),
      tableOptions: map['tableOptions'] == null ? null : PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions.fromMap((map['tableOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

