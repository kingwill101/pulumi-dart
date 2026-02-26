// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'big_lake_configuration.dart';
import 'clustering.dart';
import 'encryption_configuration.dart';
import 'external_data_configuration.dart';
import 'materialized_view_definition.dart';
import 'model_definition.dart';
import 'range_partitioning.dart';
import 'table_constraints.dart';
import 'table_reference.dart';
import 'table_schema.dart';
import 'time_partitioning.dart';
import 'view_definition.dart';

/// The set of arguments for Table.
class TableArgs2 {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  final Input<BigLakeConfiguration>? biglakeConfiguration;

  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  final Input<Clustering>? clustering;
  final Input<String> datasetId;

  /// [Optional] A user-friendly description of this table.
  final Input<String>? description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final Input<EncryptionConfiguration>? encryptionConfiguration;

  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  final Input<String>? expirationTime;

  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final Input<ExternalDataConfiguration>? externalDataConfiguration;

  /// [Optional] A descriptive name for this table.
  final Input<String>? friendlyName;

  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final Input<Map<String, String>>? labels;

  /// [Optional] Materialized view definition.
  final Input<MaterializedViewDefinition>? materializedView;

  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  final Input<String>? maxStaleness;

  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  final Input<ModelDefinition>? model;
  final Input<String>? project;

  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final Input<RangePartitioning>? rangePartitioning;

  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final Input<bool>? requirePartitionFilter;

  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  final Input<Map<String, String>>? resourceTags;

  /// [Optional] Describes the schema of this table.
  final Input<TableSchema>? schema;

  /// [Optional] The table constraints on the table.
  final Input<TableConstraints>? tableConstraints;

  /// [Required] Reference describing the ID of this table.
  final Input<TableReference>? tableReference;

  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final Input<TimePartitioning>? timePartitioning;

  /// [Optional] The view definition.
  final Input<ViewDefinition>? view;

  TableArgs2({
    this.biglakeConfiguration,
    this.clustering,
    required this.datasetId,
    this.description,
    this.encryptionConfiguration,
    this.expirationTime,
    this.externalDataConfiguration,
    this.friendlyName,
    this.labels,
    this.materializedView,
    this.maxStaleness,
    this.model,
    this.project,
    this.rangePartitioning,
    this.requirePartitionFilter,
    this.resourceTags,
    this.schema,
    this.tableConstraints,
    this.tableReference,
    this.timePartitioning,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final biglakeConfigurationValue = biglakeConfiguration;
    if (biglakeConfigurationValue != null) {
      map['biglakeConfiguration'] = Input.mapOptionalInputValue<
              BigLakeConfiguration, Map<String, dynamic>>(
          biglakeConfigurationValue, (value) => value.toMap());
    }
    final clusteringValue = clustering;
    if (clusteringValue != null) {
      map['clustering'] =
          Input.mapOptionalInputValue<Clustering, Map<String, dynamic>>(
              clusteringValue, (value) => value.toMap());
    }
    map['datasetId'] = datasetId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              EncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final externalDataConfigurationValue = externalDataConfiguration;
    if (externalDataConfigurationValue != null) {
      map['externalDataConfiguration'] = Input.mapOptionalInputValue<
              ExternalDataConfiguration, Map<String, dynamic>>(
          externalDataConfigurationValue, (value) => value.toMap());
    }
    final friendlyNameValue = friendlyName;
    if (friendlyNameValue != null) {
      map['friendlyName'] = friendlyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final materializedViewValue = materializedView;
    if (materializedViewValue != null) {
      map['materializedView'] = Input.mapOptionalInputValue<
              MaterializedViewDefinition, Map<String, dynamic>>(
          materializedViewValue, (value) => value.toMap());
    }
    final maxStalenessValue = maxStaleness;
    if (maxStalenessValue != null) {
      map['maxStaleness'] = maxStalenessValue;
    }
    final modelValue = model;
    if (modelValue != null) {
      map['model'] =
          Input.mapOptionalInputValue<ModelDefinition, Map<String, dynamic>>(
              modelValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rangePartitioningValue = rangePartitioning;
    if (rangePartitioningValue != null) {
      map['rangePartitioning'] =
          Input.mapOptionalInputValue<RangePartitioning, Map<String, dynamic>>(
              rangePartitioningValue, (value) => value.toMap());
    }
    final requirePartitionFilterValue = requirePartitionFilter;
    if (requirePartitionFilterValue != null) {
      map['requirePartitionFilter'] = requirePartitionFilterValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] =
          Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(
              schemaValue, (value) => value.toMap());
    }
    final tableConstraintsValue = tableConstraints;
    if (tableConstraintsValue != null) {
      map['tableConstraints'] =
          Input.mapOptionalInputValue<TableConstraints, Map<String, dynamic>>(
              tableConstraintsValue, (value) => value.toMap());
    }
    final tableReferenceValue = tableReference;
    if (tableReferenceValue != null) {
      map['tableReference'] =
          Input.mapOptionalInputValue<TableReference, Map<String, dynamic>>(
              tableReferenceValue, (value) => value.toMap());
    }
    final timePartitioningValue = timePartitioning;
    if (timePartitioningValue != null) {
      map['timePartitioning'] =
          Input.mapOptionalInputValue<TimePartitioning, Map<String, dynamic>>(
              timePartitioningValue, (value) => value.toMap());
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] =
          Input.mapOptionalInputValue<ViewDefinition, Map<String, dynamic>>(
              viewValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableArgs2.fromMap(Map<String, dynamic> map) {
    return TableArgs2(
      biglakeConfiguration: Input.asOptionalInput<BigLakeConfiguration>(
          map['biglakeConfiguration']),
      clustering: Input.asOptionalInput<Clustering>(map['clustering']),
      datasetId: Input.asInput<String>(map['datasetId']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptionConfiguration: Input.asOptionalInput<EncryptionConfiguration>(
          map['encryptionConfiguration']),
      expirationTime: Input.asOptionalInput<String>(map['expirationTime']),
      externalDataConfiguration:
          Input.asOptionalInput<ExternalDataConfiguration>(
              map['externalDataConfiguration']),
      friendlyName: Input.asOptionalInput<String>(map['friendlyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      materializedView: Input.asOptionalInput<MaterializedViewDefinition>(
          map['materializedView']),
      maxStaleness: Input.asOptionalInput<String>(map['maxStaleness']),
      model: Input.asOptionalInput<ModelDefinition>(map['model']),
      project: Input.asOptionalInput<String>(map['project']),
      rangePartitioning:
          Input.asOptionalInput<RangePartitioning>(map['rangePartitioning']),
      requirePartitionFilter:
          Input.asOptionalInput<bool>(map['requirePartitionFilter']),
      resourceTags:
          Input.asOptionalInput<Map<String, String>>(map['resourceTags']),
      schema: Input.asOptionalInput<TableSchema>(map['schema']),
      tableConstraints:
          Input.asOptionalInput<TableConstraints>(map['tableConstraints']),
      tableReference:
          Input.asOptionalInput<TableReference>(map['tableReference']),
      timePartitioning:
          Input.asOptionalInput<TimePartitioning>(map['timePartitioning']),
      view: Input.asOptionalInput<ViewDefinition>(map['view']),
    );
  }
}
