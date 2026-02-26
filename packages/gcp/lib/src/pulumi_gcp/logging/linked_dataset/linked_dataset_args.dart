// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../linked_dataset_bigquery_dataset/linked_dataset_bigquery_dataset.dart';

/// The set of arguments for LinkedDataset.
class LinkedDatasetArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  final Input<List<LinkedDatasetBigqueryDataset>>? bigqueryDatasets;

  /// The bucket to which the linked dataset is attached.
  final Input<String> bucket;

  /// Describes this link. The maximum length of the description is 8000 characters.
  final Input<String>? description;

  /// The id of the linked dataset.
  final Input<String> linkId;

  /// The location of the linked dataset.
  final Input<String>? location;

  /// The parent of the linked dataset.
  final Input<String>? parent;

  LinkedDatasetArgs({
    this.bigqueryDatasets,
    required this.bucket,
    this.description,
    required this.linkId,
    this.location,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDatasetsValue = bigqueryDatasets;
    if (bigqueryDatasetsValue != null) {
      map['bigqueryDatasets'] = Input.mapOptionalInputValue<
              List<LinkedDatasetBigqueryDataset>, List<Map<String, dynamic>>>(
          bigqueryDatasetsValue,
          (value) => Input.encodeList<LinkedDatasetBigqueryDataset,
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
      bigqueryDatasets:
          Input.asOptionalInput<List<LinkedDatasetBigqueryDataset>>(
              map['bigqueryDatasets']),
      bucket: Input.asInput<String>(map['bucket']),
      description: Input.asOptionalInput<String>(map['description']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asOptionalInput<String>(map['location']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
