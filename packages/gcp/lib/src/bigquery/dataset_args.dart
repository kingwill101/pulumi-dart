// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access.dart';
import 'dataset_default_encryption_configuration.dart';
import 'dataset_external_catalog_dataset_options.dart';
import 'dataset_external_dataset_reference.dart';

/// {@template pulumi_bigquery_dataset_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_bigquery_dataset_dataset_args_doc}
class DatasetArgs {
  /// An array of objects that define dataset access for one or more entities.
  /// Structure is documented below.
  final pulumi.Input<List<DatasetAccess>>? accesses;

  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String> datasetId;

  /// Defines the default collation specification of future tables created
  /// in the dataset. If a table is created in this dataset without table-level
  /// default collation, then the table inherits the dataset default collation,
  /// which is applied to the string fields that do not have explicit collation
  /// specified. A change to this field affects only tables created afterwards,
  /// and does not alter the existing tables.
  /// The following values are supported:
  /// - 'und:ci': undetermined locale, case insensitive.
  /// - '': empty string. Default to case-sensitive behavior.
  final pulumi.Input<String>? defaultCollation;

  /// The default encryption key for all tables in the dataset. Once this property is set,
  /// all newly-created partitioned tables in the dataset will have encryption key set to
  /// this value, unless table creation request (or query) overrides the key.
  /// Structure is documented below.
  final pulumi.Input<DatasetDefaultEncryptionConfiguration>?
      defaultEncryptionConfiguration;

  /// The default partition expiration for all partitioned tables in
  /// the dataset, in milliseconds.
  /// Once this property is set, all newly-created partitioned tables in
  /// the dataset will have an `expirationMs` property in the `timePartitioning`
  /// settings set to this value, and changing the value will only
  /// affect new tables, not existing ones. The storage in a partition will
  /// have an expiration time of its partition time plus this value.
  /// Setting this property overrides the use of `defaultTableExpirationMs`
  /// for partitioned tables: only one of `defaultTableExpirationMs` and
  /// `defaultPartitionExpirationMs` will be used for any new partitioned
  /// table. If you provide an explicit `timePartitioning.expirationMs` when
  /// creating or updating a partitioned table, that value takes precedence
  /// over the default partition expiration time indicated by this property.
  final pulumi.Input<int>? defaultPartitionExpirationMs;

  /// The default lifetime of all tables in the dataset, in milliseconds.
  /// The minimum value is 3600000 milliseconds (one hour).
  /// Once this property is set, all newly-created tables in the dataset
  /// will have an `expirationTime` property set to the creation time plus
  /// the value in this property, and changing the value will only affect
  /// new tables, not existing ones. When the `expirationTime` for a given
  /// table is reached, that table will be deleted automatically.
  /// If a table's `expirationTime` is modified or removed before the
  /// table expires, or if you provide an explicit `expirationTime` when
  /// creating a table, that value takes precedence over the default
  /// expiration time indicated by this property.
  final pulumi.Input<int>? defaultTableExpirationMs;

  /// If set to `true`, delete all the tables in the
  /// dataset when destroying the resource; otherwise,
  /// destroying the resource will fail if tables are present.
  final pulumi.Input<bool>? deleteContentsOnDestroy;

  /// A user-friendly description of the dataset
  final pulumi.Input<String>? description;

  /// Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// metadata of open source database, schema or namespace represented by the current dataset.
  /// Structure is documented below.
  final pulumi.Input<DatasetExternalCatalogDatasetOptions>?
      externalCatalogDatasetOptions;

  /// Information about the external metadata storage where the dataset is defined.
  /// Structure is documented below.
  final pulumi.Input<DatasetExternalDatasetReference>? externalDatasetReference;

  /// A descriptive name for the dataset
  final pulumi.Input<String>? friendlyName;

  /// TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// By default, this is FALSE, which means the dataset and its table names are
  /// case-sensitive. This field does not affect routine references.
  final pulumi.Input<bool>? isCaseInsensitive;

  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The geographic location where the dataset should reside.
  /// See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).
  /// There are two types of locations, regional or multi-regional. A regional
  /// location is a specific geographic place, such as Tokyo, and a multi-regional
  /// location is a large geographic area, such as the United States, that
  /// contains at least two geographic places.
  /// The default value is multi-regional location `US`.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  final pulumi.Input<String>? maxTimeTravelHours;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// in the namespaced format, for example "123456789012/environment" where 123456789012 is the
  /// ID of the parent organization or project resource for this tag key. Tag value is expected
  /// to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Specifies the storage billing model for the dataset.
  /// Set this flag value to LOGICAL to use logical bytes for storage billing,
  /// or to PHYSICAL to use physical bytes instead.
  /// LOGICAL is the default if this flag isn't specified.
  final pulumi.Input<String>? storageBillingModel;

  /// Creates a new [DatasetArgs].
  /// [accesses] An array of objects that define dataset access for one or more entities.
  /// [datasetId] A unique ID for this dataset, without the project name. The ID
  /// [defaultCollation] Defines the default collation specification of future tables created
  /// [defaultEncryptionConfiguration] The default encryption key for all tables in the dataset. Once this property is set,
  /// [defaultPartitionExpirationMs] The default partition expiration for all partitioned tables in
  /// [defaultTableExpirationMs] The default lifetime of all tables in the dataset, in milliseconds.
  /// [deleteContentsOnDestroy] If set to `true`, delete all the tables in the
  /// [description] A user-friendly description of the dataset
  /// [externalCatalogDatasetOptions] Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// [externalDatasetReference] Information about the external metadata storage where the dataset is defined.
  /// [friendlyName] A descriptive name for the dataset
  /// [isCaseInsensitive] TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// [labels] The labels associated with this dataset. You can use these to
  /// [location] The geographic location where the dataset should reside.
  /// [maxTimeTravelHours] Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceTags] The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// [storageBillingModel] Specifies the storage billing model for the dataset.
  DatasetArgs({
    List<DatasetAccess>? accesses,
    required String datasetId,
    String? defaultCollation,
    DatasetDefaultEncryptionConfiguration? defaultEncryptionConfiguration,
    int? defaultPartitionExpirationMs,
    int? defaultTableExpirationMs,
    bool? deleteContentsOnDestroy,
    String? description,
    DatasetExternalCatalogDatasetOptions? externalCatalogDatasetOptions,
    DatasetExternalDatasetReference? externalDatasetReference,
    String? friendlyName,
    bool? isCaseInsensitive,
    Map<String, String>? labels,
    String? location,
    String? maxTimeTravelHours,
    String? project,
    Map<String, String>? resourceTags,
    String? storageBillingModel,
  })  : accesses = pulumi.Input.asOptionalInput<List<DatasetAccess>>(accesses),
        datasetId = pulumi.Input.asInput<String>(datasetId),
        defaultCollation =
            pulumi.Input.asOptionalInput<String>(defaultCollation),
        defaultEncryptionConfiguration =
            pulumi.Input.asOptionalInput<DatasetDefaultEncryptionConfiguration>(
                defaultEncryptionConfiguration),
        defaultPartitionExpirationMs =
            pulumi.Input.asOptionalInput<int>(defaultPartitionExpirationMs),
        defaultTableExpirationMs =
            pulumi.Input.asOptionalInput<int>(defaultTableExpirationMs),
        deleteContentsOnDestroy =
            pulumi.Input.asOptionalInput<bool>(deleteContentsOnDestroy),
        description = pulumi.Input.asOptionalInput<String>(description),
        externalCatalogDatasetOptions =
            pulumi.Input.asOptionalInput<DatasetExternalCatalogDatasetOptions>(
                externalCatalogDatasetOptions),
        externalDatasetReference =
            pulumi.Input.asOptionalInput<DatasetExternalDatasetReference>(
                externalDatasetReference),
        friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
        isCaseInsensitive =
            pulumi.Input.asOptionalInput<bool>(isCaseInsensitive),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        maxTimeTravelHours =
            pulumi.Input.asOptionalInput<String>(maxTimeTravelHours),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceTags =
            pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
        storageBillingModel =
            pulumi.Input.asOptionalInput<String>(storageBillingModel);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessesValue = accesses;
    if (accessesValue != null) {
      map['accesses'] = pulumi.Input.mapOptionalInputValue<List<DatasetAccess>,
              List<Map<String, dynamic>>>(
          accessesValue,
          (value) =>
              pulumi.Input.encodeList<DatasetAccess, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['datasetId'] = datasetId;
    final defaultCollationValue = defaultCollation;
    if (defaultCollationValue != null) {
      map['defaultCollation'] = defaultCollationValue;
    }
    final defaultEncryptionConfigurationValue = defaultEncryptionConfiguration;
    if (defaultEncryptionConfigurationValue != null) {
      map['defaultEncryptionConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  DatasetDefaultEncryptionConfiguration, Map<String, dynamic>>(
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
    final deleteContentsOnDestroyValue = deleteContentsOnDestroy;
    if (deleteContentsOnDestroyValue != null) {
      map['deleteContentsOnDestroy'] = deleteContentsOnDestroyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final externalCatalogDatasetOptionsValue = externalCatalogDatasetOptions;
    if (externalCatalogDatasetOptionsValue != null) {
      map['externalCatalogDatasetOptions'] = pulumi.Input.mapOptionalInputValue<
              DatasetExternalCatalogDatasetOptions, Map<String, dynamic>>(
          externalCatalogDatasetOptionsValue, (value) => value.toMap());
    }
    final externalDatasetReferenceValue = externalDatasetReference;
    if (externalDatasetReferenceValue != null) {
      map['externalDatasetReference'] = pulumi.Input.mapOptionalInputValue<
              DatasetExternalDatasetReference, Map<String, dynamic>>(
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
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    final storageBillingModelValue = storageBillingModel;
    if (storageBillingModelValue != null) {
      map['storageBillingModel'] = storageBillingModelValue;
    }
    return map;
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      accesses: map['accesses'] == null
          ? null
          : pulumi.Input.decodeList<DatasetAccess>(
              map['accesses'],
              (value) => DatasetAccess.fromMap(
                  (value as Map).cast<String, dynamic>())),
      datasetId: map['datasetId'] as String,
      defaultCollation: map['defaultCollation'] == null
          ? null
          : map['defaultCollation'] as String,
      defaultEncryptionConfiguration:
          map['defaultEncryptionConfiguration'] == null
              ? null
              : DatasetDefaultEncryptionConfiguration.fromMap(
                  (map['defaultEncryptionConfiguration'] as Map)
                      .cast<String, dynamic>()),
      defaultPartitionExpirationMs: map['defaultPartitionExpirationMs'] == null
          ? null
          : map['defaultPartitionExpirationMs'] as int,
      defaultTableExpirationMs: map['defaultTableExpirationMs'] == null
          ? null
          : map['defaultTableExpirationMs'] as int,
      deleteContentsOnDestroy: map['deleteContentsOnDestroy'] == null
          ? null
          : map['deleteContentsOnDestroy'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      externalCatalogDatasetOptions:
          map['externalCatalogDatasetOptions'] == null
              ? null
              : DatasetExternalCatalogDatasetOptions.fromMap(
                  (map['externalCatalogDatasetOptions'] as Map)
                      .cast<String, dynamic>()),
      externalDatasetReference: map['externalDatasetReference'] == null
          ? null
          : DatasetExternalDatasetReference.fromMap(
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
      resourceTags: map['resourceTags'] == null
          ? null
          : (map['resourceTags'] as Map).cast<String, String>(),
      storageBillingModel: map['storageBillingModel'] == null
          ? null
          : map['storageBillingModel'] as String,
    );
  }
}
