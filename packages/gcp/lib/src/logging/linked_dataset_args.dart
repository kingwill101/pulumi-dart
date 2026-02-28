// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_dataset_bigquery_dataset.dart';

/// {@template pulumi_logging_linked_dataset_linked_dataset_args_doc}
/// The set of arguments for LinkedDataset.
/// {@endtemplate}
/// {@macro pulumi_logging_linked_dataset_linked_dataset_args_doc}
class LinkedDatasetArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  final pulumi.Input<List<LinkedDatasetBigqueryDataset>>? bigqueryDatasets;

  /// The bucket to which the linked dataset is attached.
  final pulumi.Input<String> bucket;

  /// Describes this link. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// The id of the linked dataset.
  final pulumi.Input<String> linkId;

  /// The location of the linked dataset.
  final pulumi.Input<String>? location;

  /// The parent of the linked dataset.
  final pulumi.Input<String>? parent;

  /// Creates a new [LinkedDatasetArgs].
  /// [bigqueryDatasets] The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// [bucket] The bucket to which the linked dataset is attached.
  /// [description] Describes this link. The maximum length of the description is 8000 characters.
  /// [linkId] The id of the linked dataset.
  /// [location] The location of the linked dataset.
  /// [parent] The parent of the linked dataset.
  LinkedDatasetArgs({
    List<LinkedDatasetBigqueryDataset>? bigqueryDatasets,
    required String bucket,
    String? description,
    required String linkId,
    String? location,
    String? parent,
  })  : bigqueryDatasets =
            pulumi.Input.asOptionalInput<List<LinkedDatasetBigqueryDataset>>(
                bigqueryDatasets),
        bucket = pulumi.Input.asInput<String>(bucket),
        description = pulumi.Input.asOptionalInput<String>(description),
        linkId = pulumi.Input.asInput<String>(linkId),
        location = pulumi.Input.asOptionalInput<String>(location),
        parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDatasetsValue = bigqueryDatasets;
    if (bigqueryDatasetsValue != null) {
      map['bigqueryDatasets'] = pulumi.Input.mapOptionalInputValue<
              List<LinkedDatasetBigqueryDataset>, List<Map<String, dynamic>>>(
          bigqueryDatasetsValue,
          (value) => pulumi.Input.encodeList<LinkedDatasetBigqueryDataset,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['bucket'] = bucket;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['linkId'] = linkId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory LinkedDatasetArgs.fromMap(Map<String, dynamic> map) {
    return LinkedDatasetArgs(
      bigqueryDatasets: map['bigqueryDatasets'] == null
          ? null
          : pulumi.Input.decodeList<LinkedDatasetBigqueryDataset>(
              map['bigqueryDatasets'],
              (value) => LinkedDatasetBigqueryDataset.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      linkId: map['linkId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
