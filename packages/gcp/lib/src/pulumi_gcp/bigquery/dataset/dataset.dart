import 'package:pulumi/pulumi.dart';
import '../dataset_access/dataset_access.dart';
import '../dataset_default_encryption_configuration/dataset_default_encryption_configuration.dart';
import '../dataset_external_catalog_dataset_options/dataset_external_catalog_dataset_options.dart';
import '../dataset_external_dataset_reference/dataset_external_dataset_reference.dart';
import 'dataset_args.dart';

/// ## Example Usage
///
/// ### Bigquery Dataset Basic
///
///
///
/// ### Bigquery Dataset Cmek
///
///
///
/// ### Bigquery Dataset Authorized Dataset
///
///
///
/// ### Bigquery Dataset Authorized Routine
///
///
///
/// ### Bigquery Dataset External Reference Aws
///
///
///
/// ### Bigquery Dataset External Catalog Dataset Options
///
///
///
///
/// ## Import
///
/// Dataset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}`
///
/// * `{{project}}/{{dataset_id}}`
///
/// * `{{dataset_id}}`
///
/// When using the `pulumi import` command, Dataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataset:Dataset default projects/{{project}}/datasets/{{dataset_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataset:Dataset default {{project}}/{{dataset_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataset:Dataset default {{dataset_id}}
/// ```
class Dataset extends CustomResource {
  /// An array of objects that define dataset access for one or more entities.
  /// Structure is documented below.
  late final Output<List<DatasetAccess>> accesses;

  /// The time when this dataset was created, in milliseconds since the
  /// epoch.
  late final Output<int> creationTime;

  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  late final Output<String> datasetId;

  /// Defines the default collation specification of future tables created
  /// in the dataset. If a table is created in this dataset without table-level
  /// default collation, then the table inherits the dataset default collation,
  /// which is applied to the string fields that do not have explicit collation
  /// specified. A change to this field affects only tables created afterwards,
  /// and does not alter the existing tables.
  /// The following values are supported:
  /// - 'und:ci': undetermined locale, case insensitive.
  /// - '': empty string. Default to case-sensitive behavior.
  late final Output<String> defaultCollation;

  /// The default encryption key for all tables in the dataset. Once this property is set,
  /// all newly-created partitioned tables in the dataset will have encryption key set to
  /// this value, unless table creation request (or query) overrides the key.
  /// Structure is documented below.
  late final Output<DatasetDefaultEncryptionConfiguration?>
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
  late final Output<int?> defaultPartitionExpirationMs;

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
  late final Output<int?> defaultTableExpirationMs;

  /// If set to `true`, delete all the tables in the
  /// dataset when destroying the resource; otherwise,
  /// destroying the resource will fail if tables are present.
  late final Output<bool?> deleteContentsOnDestroy;

  /// A user-friendly description of the dataset
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A hash of the resource.
  late final Output<String> etag;

  /// Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// metadata of open source database, schema or namespace represented by the current dataset.
  /// Structure is documented below.
  late final Output<DatasetExternalCatalogDatasetOptions?>
      externalCatalogDatasetOptions;

  /// Information about the external metadata storage where the dataset is defined.
  /// Structure is documented below.
  late final Output<DatasetExternalDatasetReference?> externalDatasetReference;

  /// A descriptive name for the dataset
  late final Output<String?> friendlyName;

  /// TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// By default, this is FALSE, which means the dataset and its table names are
  /// case-sensitive. This field does not affect routine references.
  late final Output<bool> isCaseInsensitive;

  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The date when this dataset or any of its tables was last modified, in
  /// milliseconds since the epoch.
  late final Output<int> lastModifiedTime;

  /// The geographic location where the dataset should reside.
  /// See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).
  /// There are two types of locations, regional or multi-regional. A regional
  /// location is a specific geographic place, such as Tokyo, and a multi-regional
  /// location is a large geographic area, such as the United States, that
  /// contains at least two geographic places.
  /// The default value is multi-regional location `US`.
  /// Changing this forces a new resource to be created.
  late final Output<String?> location;

  /// Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  late final Output<String> maxTimeTravelHours;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// in the namespaced format, for example "123456789012/environment" where 123456789012 is the
  /// ID of the parent organization or project resource for this tag key. Tag value is expected
  /// to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  late final Output<Map<String, String>?> resourceTags;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Specifies the storage billing model for the dataset.
  /// Set this flag value to LOGICAL to use logical bytes for storage billing,
  /// or to PHYSICAL to use physical bytes instead.
  /// LOGICAL is the default if this flag isn't specified.
  late final Output<String> storageBillingModel;

  Dataset(
    String name, {
    DatasetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataset:Dataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accesses = registerOutput<List<DatasetAccess>>('accesses');
    this.creationTime = registerOutput<int>('creationTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.defaultCollation = registerOutput<String>('defaultCollation');
    this.defaultEncryptionConfiguration =
        registerOutput<DatasetDefaultEncryptionConfiguration?>(
            'defaultEncryptionConfiguration');
    this.defaultPartitionExpirationMs =
        registerOutput<int?>('defaultPartitionExpirationMs');
    this.defaultTableExpirationMs =
        registerOutput<int?>('defaultTableExpirationMs');
    this.deleteContentsOnDestroy =
        registerOutput<bool?>('deleteContentsOnDestroy');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.externalCatalogDatasetOptions =
        registerOutput<DatasetExternalCatalogDatasetOptions?>(
            'externalCatalogDatasetOptions');
    this.externalDatasetReference =
        registerOutput<DatasetExternalDatasetReference?>(
            'externalDatasetReference');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.isCaseInsensitive = registerOutput<bool>('isCaseInsensitive');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifiedTime = registerOutput<int>('lastModifiedTime');
    this.location = registerOutput<String?>('location');
    this.maxTimeTravelHours = registerOutput<String>('maxTimeTravelHours');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.selfLink = registerOutput<String>('selfLink');
    this.storageBillingModel = registerOutput<String>('storageBillingModel');
  }
}
