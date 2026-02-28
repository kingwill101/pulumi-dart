// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_bigquery_dataset_effective_replica.dart';
import 'listing_bigquery_dataset_selected_resource.dart';

class ListingBigqueryDataset {
  /// Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123
  final String dataset;

  /// (Output, Beta)
  /// Server owned effective state of replicas. Contains both primary and secondary replicas.
  /// Each replica includes a system-computed (output-only) state and primary designation.
  /// Structure is documented below.
  final List<ListingBigqueryDatasetEffectiveReplica>? effectiveReplicas;

  /// A list of regions where the publisher has created shared dataset replicas.
  final List<String>? replicaLocations;

  /// Resource in this dataset that is selectively shared. This field is required for data clean room exchanges.
  /// Structure is documented below.
  final List<ListingBigqueryDatasetSelectedResource>? selectedResources;

  /// Creates a new [ListingBigqueryDataset].
  /// [dataset] Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123
  /// [effectiveReplicas] (Output, Beta)
  /// [replicaLocations] A list of regions where the publisher has created shared dataset replicas.
  /// [selectedResources] Resource in this dataset that is selectively shared. This field is required for data clean room exchanges.
  ListingBigqueryDataset({
    required this.dataset,
    this.effectiveReplicas,
    this.replicaLocations,
    this.selectedResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    final effectiveReplicasValue = effectiveReplicas;
    if (effectiveReplicasValue != null) {
      map['effectiveReplicas'] = pulumi.Input.encodeList<
              ListingBigqueryDatasetEffectiveReplica, Map<String, dynamic>>(
          effectiveReplicasValue, (value) => value.toMap());
    }
    final replicaLocationsValue = replicaLocations;
    if (replicaLocationsValue != null) {
      map['replicaLocations'] = replicaLocationsValue;
    }
    final selectedResourcesValue = selectedResources;
    if (selectedResourcesValue != null) {
      map['selectedResources'] = pulumi.Input.encodeList<
              ListingBigqueryDatasetSelectedResource, Map<String, dynamic>>(
          selectedResourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingBigqueryDataset.fromMap(Map<String, dynamic> map) {
    return ListingBigqueryDataset(
      dataset: map['dataset'] as String,
      effectiveReplicas: map['effectiveReplicas'] == null
          ? null
          : pulumi.Input.decodeList<ListingBigqueryDatasetEffectiveReplica>(
              map['effectiveReplicas'],
              (value) => ListingBigqueryDatasetEffectiveReplica.fromMap(
                  (value as Map).cast<String, dynamic>())),
      replicaLocations: map['replicaLocations'] == null
          ? null
          : (map['replicaLocations'] as List).cast<String>(),
      selectedResources: map['selectedResources'] == null
          ? null
          : pulumi.Input.decodeList<ListingBigqueryDatasetSelectedResource>(
              map['selectedResources'],
              (value) => ListingBigqueryDatasetSelectedResource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
