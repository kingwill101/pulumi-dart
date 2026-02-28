// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_item.dart';
import 'dataset_reference.dart';
import 'dataset_tags_item.dart';
import 'encryption_configuration.dart';
import 'external_dataset_reference.dart';

/// {@template pulumi_bigquery_v2_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_dataset_args_doc}
class DatasetArgs {
  /// [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  final pulumi.Input<List<DatasetAccessItem>>? access;

  /// [Required] A reference that identifies the dataset.
  final pulumi.Input<DatasetReference>? datasetReference;
  final pulumi.Input<EncryptionConfiguration>? defaultEncryptionConfiguration;

  /// [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  final pulumi.Input<String>? defaultPartitionExpirationMs;

  /// [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  final pulumi.Input<String>? defaultTableExpirationMs;

  /// [Optional] A user-friendly description of the dataset.
  final pulumi.Input<String>? description;

  /// [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  final pulumi.Input<ExternalDatasetReference>? externalDatasetReference;

  /// [Optional] A descriptive name for the dataset.
  final pulumi.Input<String>? friendlyName;

  /// [Optional] Indicates if table names are case insensitive in the dataset.
  final pulumi.Input<bool>? isCaseInsensitive;

  /// The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  final pulumi.Input<Map<String, String>>? labels;

  /// The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  final pulumi.Input<String>? location;

  /// [Optional] Number of hours for the max time travel for all tables in the dataset.
  final pulumi.Input<String>? maxTimeTravelHours;
  final pulumi.Input<String>? project;

  /// [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  final pulumi.Input<String>? storageBillingModel;

  /// [Optional]The tags associated with this dataset. Tag keys are globally unique.
  final pulumi.Input<List<DatasetTagsItem>>? tags;

  /// Creates a new [DatasetArgs].
  /// [access] [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  /// [datasetReference] [Required] A reference that identifies the dataset.
  /// [defaultEncryptionConfiguration] Optional.
  /// [defaultPartitionExpirationMs] [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  /// [defaultTableExpirationMs] [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  /// [description] [Optional] A user-friendly description of the dataset.
  /// [externalDatasetReference] [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  /// [friendlyName] [Optional] A descriptive name for the dataset.
  /// [isCaseInsensitive] [Optional] Indicates if table names are case insensitive in the dataset.
  /// [labels] The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  /// [location] The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  /// [maxTimeTravelHours] [Optional] Number of hours for the max time travel for all tables in the dataset.
  /// [project] Optional.
  /// [storageBillingModel] [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  /// [tags] [Optional]The tags associated with this dataset. Tag keys are globally unique.
  DatasetArgs({
    List<DatasetAccessItem>? access,
    DatasetReference? datasetReference,
    EncryptionConfiguration? defaultEncryptionConfiguration,
    String? defaultPartitionExpirationMs,
    String? defaultTableExpirationMs,
    String? description,
    ExternalDatasetReference? externalDatasetReference,
    String? friendlyName,
    bool? isCaseInsensitive,
    Map<String, String>? labels,
    String? location,
    String? maxTimeTravelHours,
    String? project,
    String? storageBillingModel,
    List<DatasetTagsItem>? tags,
  })  : access = pulumi.Input.asOptionalInput<List<DatasetAccessItem>>(access),
        datasetReference =
            pulumi.Input.asOptionalInput<DatasetReference>(datasetReference),
        defaultEncryptionConfiguration =
            pulumi.Input.asOptionalInput<EncryptionConfiguration>(
                defaultEncryptionConfiguration),
        defaultPartitionExpirationMs =
            pulumi.Input.asOptionalInput<String>(defaultPartitionExpirationMs),
        defaultTableExpirationMs =
            pulumi.Input.asOptionalInput<String>(defaultTableExpirationMs),
        description = pulumi.Input.asOptionalInput<String>(description),
        externalDatasetReference =
            pulumi.Input.asOptionalInput<ExternalDatasetReference>(
                externalDatasetReference),
        friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
        isCaseInsensitive =
            pulumi.Input.asOptionalInput<bool>(isCaseInsensitive),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        maxTimeTravelHours =
            pulumi.Input.asOptionalInput<String>(maxTimeTravelHours),
        project = pulumi.Input.asOptionalInput<String>(project),
        storageBillingModel =
            pulumi.Input.asOptionalInput<String>(storageBillingModel),
        tags = pulumi.Input.asOptionalInput<List<DatasetTagsItem>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessValue = access;
    if (accessValue != null) {
      map['access'] = pulumi.Input.mapOptionalInputValue<
              List<DatasetAccessItem>, List<Map<String, dynamic>>>(
          accessValue,
          (value) =>
              pulumi.Input.encodeList<DatasetAccessItem, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final datasetReferenceValue = datasetReference;
    if (datasetReferenceValue != null) {
      map['datasetReference'] = pulumi.Input.mapOptionalInputValue<
              DatasetReference, Map<String, dynamic>>(
          datasetReferenceValue, (value) => value.toMap());
    }
    final defaultEncryptionConfigurationValue = defaultEncryptionConfiguration;
    if (defaultEncryptionConfigurationValue != null) {
      map['defaultEncryptionConfiguration'] = pulumi.Input
          .mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(
              defaultEncryptionConfigurationValue, (value) => value.toMap());
    }
    final defaultPartitionExpirationMsValue = defaultPartitionExpirationMs;
    if (defaultPartitionExpirationMsValue != null) {
      map['defaultPartitionExpirationMs'] = defaultPartitionExpirationMsValue;
    }
    final defaultTableExpirationMsValue = defaultTableExpirationMs;
    if (defaultTableExpirationMsValue != null) {
      map['defaultTableExpirationMs'] = defaultTableExpirationMsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final externalDatasetReferenceValue = externalDatasetReference;
    if (externalDatasetReferenceValue != null) {
      map['externalDatasetReference'] = pulumi.Input.mapOptionalInputValue<
              ExternalDatasetReference, Map<String, dynamic>>(
          externalDatasetReferenceValue, (value) => value.toMap());
    }
    final friendlyNameValue = friendlyName;
    if (friendlyNameValue != null) {
      map['friendlyName'] = friendlyNameValue;
    }
    final isCaseInsensitiveValue = isCaseInsensitive;
    if (isCaseInsensitiveValue != null) {
      map['isCaseInsensitive'] = isCaseInsensitiveValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maxTimeTravelHoursValue = maxTimeTravelHours;
    if (maxTimeTravelHoursValue != null) {
      map['maxTimeTravelHours'] = maxTimeTravelHoursValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final storageBillingModelValue = storageBillingModel;
    if (storageBillingModelValue != null) {
      map['storageBillingModel'] = storageBillingModelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = pulumi.Input.mapOptionalInputValue<List<DatasetTagsItem>,
              List<Map<String, dynamic>>>(
          tagsValue,
          (value) =>
              pulumi.Input.encodeList<DatasetTagsItem, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      access: map['access'] == null
          ? null
          : pulumi.Input.decodeList<DatasetAccessItem>(
              map['access'],
              (value) => DatasetAccessItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      datasetReference: map['datasetReference'] == null
          ? null
          : DatasetReference.fromMap(
              (map['datasetReference'] as Map).cast<String, dynamic>()),
      defaultEncryptionConfiguration:
          map['defaultEncryptionConfiguration'] == null
              ? null
              : EncryptionConfiguration.fromMap(
                  (map['defaultEncryptionConfiguration'] as Map)
                      .cast<String, dynamic>()),
      defaultPartitionExpirationMs: map['defaultPartitionExpirationMs'] == null
          ? null
          : map['defaultPartitionExpirationMs'] as String,
      defaultTableExpirationMs: map['defaultTableExpirationMs'] == null
          ? null
          : map['defaultTableExpirationMs'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      externalDatasetReference: map['externalDatasetReference'] == null
          ? null
          : ExternalDatasetReference.fromMap(
              (map['externalDatasetReference'] as Map).cast<String, dynamic>()),
      friendlyName:
          map['friendlyName'] == null ? null : map['friendlyName'] as String,
      isCaseInsensitive: map['isCaseInsensitive'] == null
          ? null
          : map['isCaseInsensitive'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maxTimeTravelHours: map['maxTimeTravelHours'] == null
          ? null
          : map['maxTimeTravelHours'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      storageBillingModel: map['storageBillingModel'] == null
          ? null
          : map['storageBillingModel'] as String,
      tags: map['tags'] == null
          ? null
          : pulumi.Input.decodeList<DatasetTagsItem>(
              map['tags'],
              (value) => DatasetTagsItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
