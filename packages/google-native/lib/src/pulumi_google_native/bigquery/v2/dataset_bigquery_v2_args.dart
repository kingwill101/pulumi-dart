// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_item.dart';
import 'dataset_reference.dart';
import 'dataset_tags_item.dart';
import 'encryption_configuration.dart';
import 'external_dataset_reference.dart';

/// The set of arguments for Dataset.
class DatasetBigqueryV2Args {
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

  DatasetBigqueryV2Args({
    this.access,
    this.datasetReference,
    this.defaultEncryptionConfiguration,
    this.defaultPartitionExpirationMs,
    this.defaultTableExpirationMs,
    this.description,
    this.externalDatasetReference,
    this.friendlyName,
    this.isCaseInsensitive,
    this.labels,
    this.location,
    this.maxTimeTravelHours,
    this.project,
    this.storageBillingModel,
    this.tags,
  });

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

  factory DatasetBigqueryV2Args.fromMap(Map<String, dynamic> map) {
    return DatasetBigqueryV2Args(
      access:
          pulumi.Input.asOptionalInput<List<DatasetAccessItem>>(map['access']),
      datasetReference: pulumi.Input.asOptionalInput<DatasetReference>(
          map['datasetReference']),
      defaultEncryptionConfiguration:
          pulumi.Input.asOptionalInput<EncryptionConfiguration>(
              map['defaultEncryptionConfiguration']),
      defaultPartitionExpirationMs: pulumi.Input.asOptionalInput<String>(
          map['defaultPartitionExpirationMs']),
      defaultTableExpirationMs:
          pulumi.Input.asOptionalInput<String>(map['defaultTableExpirationMs']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      externalDatasetReference:
          pulumi.Input.asOptionalInput<ExternalDatasetReference>(
              map['externalDatasetReference']),
      friendlyName: pulumi.Input.asOptionalInput<String>(map['friendlyName']),
      isCaseInsensitive:
          pulumi.Input.asOptionalInput<bool>(map['isCaseInsensitive']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maxTimeTravelHours:
          pulumi.Input.asOptionalInput<String>(map['maxTimeTravelHours']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storageBillingModel:
          pulumi.Input.asOptionalInput<String>(map['storageBillingModel']),
      tags: pulumi.Input.asOptionalInput<List<DatasetTagsItem>>(map['tags']),
    );
  }
}
