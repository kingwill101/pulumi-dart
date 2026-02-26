// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.
class BigQueryDatasetSourceResponse2 {
  /// Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  final String dataset;

  BigQueryDatasetSourceResponse2({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    return map;
  }

  factory BigQueryDatasetSourceResponse2.fromMap(Map<String, dynamic> map) {
    return BigQueryDatasetSourceResponse2(
      dataset: map['dataset'] as String,
    );
  }
}
