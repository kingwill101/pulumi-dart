// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.
class BigQueryDatasetSource {
  /// Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  final String? dataset;

  /// Creates a new [BigQueryDatasetSource].
  /// [dataset] Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  BigQueryDatasetSource({
    this.dataset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    return map;
  }

  factory BigQueryDatasetSource.fromMap(Map<String, dynamic> map) {
    return BigQueryDatasetSource(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
    );
  }
}
