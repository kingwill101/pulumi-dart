import 'package:pulumi/pulumi.dart';
import 'dataset_access_item_response.dart';
import 'dataset_args3.dart';
import 'dataset_reference_response.dart';
import 'dataset_tags_item_response.dart';
import 'encryption_configuration_response.dart';
import 'external_dataset_reference_response.dart';

/// Creates a new empty dataset.
/// Auto-naming is currently not supported for this resource.
class Dataset3 extends CustomResource {
  /// [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  late final Output<List<DatasetAccessItemResponse>> access;

  /// The time when this dataset was created, in milliseconds since the epoch.
  late final Output<String> creationTime;

  /// [Required] A reference that identifies the dataset.
  late final Output<DatasetReferenceResponse> datasetReference;

  /// The default collation of the dataset.
  late final Output<String> defaultCollation;
  late final Output<EncryptionConfigurationResponse>
      defaultEncryptionConfiguration;

  /// [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  late final Output<String> defaultPartitionExpirationMs;

  /// The default rounding mode of the dataset.
  late final Output<String> defaultRoundingMode;

  /// [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  late final Output<String> defaultTableExpirationMs;

  /// [Optional] A user-friendly description of the dataset.
  late final Output<String> description;

  /// A hash of the resource.
  late final Output<String> etag;

  /// [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  late final Output<ExternalDatasetReferenceResponse> externalDatasetReference;

  /// [Optional] A descriptive name for the dataset.
  late final Output<String> friendlyName;

  /// [Optional] Indicates if table names are case insensitive in the dataset.
  late final Output<bool> isCaseInsensitive;

  /// The resource type.
  late final Output<String> kind;

  /// The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  late final Output<Map<String, String>> labels;

  /// The date when this dataset or any of its tables was last modified, in milliseconds since the epoch.
  late final Output<String> lastModifiedTime;

  /// The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  late final Output<String> location;

  /// [Optional] Number of hours for the max time travel for all tables in the dataset.
  late final Output<String> maxTimeTravelHours;
  late final Output<String> project;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource.
  late final Output<String> selfLink;

  /// [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  late final Output<String> storageBillingModel;

  /// [Optional]The tags associated with this dataset. Tag keys are globally unique.
  late final Output<List<DatasetTagsItemResponse>> tags;

  Dataset3(
    String name, {
    DatasetArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigquery/v2:Dataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.access = registerOutput<List<DatasetAccessItemResponse>>('access');
    this.creationTime = registerOutput<String>('creationTime');
    this.datasetReference =
        registerOutput<DatasetReferenceResponse>('datasetReference');
    this.defaultCollation = registerOutput<String>('defaultCollation');
    this.defaultEncryptionConfiguration =
        registerOutput<EncryptionConfigurationResponse>(
            'defaultEncryptionConfiguration');
    this.defaultPartitionExpirationMs =
        registerOutput<String>('defaultPartitionExpirationMs');
    this.defaultRoundingMode = registerOutput<String>('defaultRoundingMode');
    this.defaultTableExpirationMs =
        registerOutput<String>('defaultTableExpirationMs');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.externalDatasetReference =
        registerOutput<ExternalDatasetReferenceResponse>(
            'externalDatasetReference');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.isCaseInsensitive = registerOutput<bool>('isCaseInsensitive');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.location = registerOutput<String>('location');
    this.maxTimeTravelHours = registerOutput<String>('maxTimeTravelHours');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.selfLink = registerOutput<String>('selfLink');
    this.storageBillingModel = registerOutput<String>('storageBillingModel');
    this.tags = registerOutput<List<DatasetTagsItemResponse>>('tags');
  }
}
