// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_dataset_access/get_dataset_access.dart';
import '../get_dataset_default_encryption_configuration/get_dataset_default_encryption_configuration.dart';
import '../get_dataset_external_catalog_dataset_option/get_dataset_external_catalog_dataset_option.dart';
import '../get_dataset_external_dataset_reference/get_dataset_external_dataset_reference.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  final List<GetDatasetAccess> accesses;
  final int creationTime;
  final String datasetId;
  final String defaultCollation;
  final List<GetDatasetDefaultEncryptionConfiguration>
      defaultEncryptionConfigurations;
  final int defaultPartitionExpirationMs;
  final int defaultTableExpirationMs;
  final bool deleteContentsOnDestroy;
  final String description;
  final Map<String, String> effectiveLabels;
  final String etag;
  final List<GetDatasetExternalCatalogDatasetOption>
      externalCatalogDatasetOptions;
  final List<GetDatasetExternalDatasetReference> externalDatasetReferences;
  final String friendlyName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool isCaseInsensitive;
  final Map<String, String> labels;
  final int lastModifiedTime;
  final String location;
  final String maxTimeTravelHours;
  final String? project;
  final Map<String, String> pulumiLabels;
  final Map<String, String> resourceTags;
  final String selfLink;
  final String storageBillingModel;

  GetDatasetResult({
    required this.accesses,
    required this.creationTime,
    required this.datasetId,
    required this.defaultCollation,
    required this.defaultEncryptionConfigurations,
    required this.defaultPartitionExpirationMs,
    required this.defaultTableExpirationMs,
    required this.deleteContentsOnDestroy,
    required this.description,
    required this.effectiveLabels,
    required this.etag,
    required this.externalCatalogDatasetOptions,
    required this.externalDatasetReferences,
    required this.friendlyName,
    required this.id,
    required this.isCaseInsensitive,
    required this.labels,
    required this.lastModifiedTime,
    required this.location,
    required this.maxTimeTravelHours,
    this.project,
    required this.pulumiLabels,
    required this.resourceTags,
    required this.selfLink,
    required this.storageBillingModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accesses'] =
        pulumi.Input.encodeList<GetDatasetAccess, Map<String, dynamic>>(
            accesses, (value) => value.toMap());
    map['creationTime'] = creationTime;
    map['datasetId'] = datasetId;
    map['defaultCollation'] = defaultCollation;
    map['defaultEncryptionConfigurations'] = pulumi.Input.encodeList<
            GetDatasetDefaultEncryptionConfiguration, Map<String, dynamic>>(
        defaultEncryptionConfigurations, (value) => value.toMap());
    map['defaultPartitionExpirationMs'] = defaultPartitionExpirationMs;
    map['defaultTableExpirationMs'] = defaultTableExpirationMs;
    map['deleteContentsOnDestroy'] = deleteContentsOnDestroy;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['etag'] = etag;
    map['externalCatalogDatasetOptions'] = pulumi.Input.encodeList<
            GetDatasetExternalCatalogDatasetOption, Map<String, dynamic>>(
        externalCatalogDatasetOptions, (value) => value.toMap());
    map['externalDatasetReferences'] = pulumi.Input.encodeList<
            GetDatasetExternalDatasetReference, Map<String, dynamic>>(
        externalDatasetReferences, (value) => value.toMap());
    map['friendlyName'] = friendlyName;
    map['id'] = id;
    map['isCaseInsensitive'] = isCaseInsensitive;
    map['labels'] = labels;
    map['lastModifiedTime'] = lastModifiedTime;
    map['location'] = location;
    map['maxTimeTravelHours'] = maxTimeTravelHours;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['resourceTags'] = resourceTags;
    map['selfLink'] = selfLink;
    map['storageBillingModel'] = storageBillingModel;
    return map;
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      accesses: pulumi.Input.decodeList<GetDatasetAccess>(
          map['accesses'],
          (value) =>
              GetDatasetAccess.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as int,
      datasetId: map['datasetId'] as String,
      defaultCollation: map['defaultCollation'] as String,
      defaultEncryptionConfigurations:
          pulumi.Input.decodeList<GetDatasetDefaultEncryptionConfiguration>(
              map['defaultEncryptionConfigurations'],
              (value) => GetDatasetDefaultEncryptionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      defaultPartitionExpirationMs: map['defaultPartitionExpirationMs'] as int,
      defaultTableExpirationMs: map['defaultTableExpirationMs'] as int,
      deleteContentsOnDestroy: map['deleteContentsOnDestroy'] as bool,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      externalCatalogDatasetOptions:
          pulumi.Input.decodeList<GetDatasetExternalCatalogDatasetOption>(
              map['externalCatalogDatasetOptions'],
              (value) => GetDatasetExternalCatalogDatasetOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      externalDatasetReferences:
          pulumi.Input.decodeList<GetDatasetExternalDatasetReference>(
              map['externalDatasetReferences'],
              (value) => GetDatasetExternalDatasetReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      isCaseInsensitive: map['isCaseInsensitive'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifiedTime: map['lastModifiedTime'] as int,
      location: map['location'] as String,
      maxTimeTravelHours: map['maxTimeTravelHours'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      storageBillingModel: map['storageBillingModel'] as String,
    );
  }
}
