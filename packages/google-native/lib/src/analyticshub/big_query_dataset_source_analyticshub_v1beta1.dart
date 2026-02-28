// ignore_for_file: unused_element, unnecessary_cast


/// A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.
class BigQueryDatasetSourceAnalyticshubV1beta1 {
  /// Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  final String? dataset;

  /// Creates a new [BigQueryDatasetSourceAnalyticshubV1beta1].
  /// [dataset] Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  BigQueryDatasetSourceAnalyticshubV1beta1({
    this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
    };
  }

  factory BigQueryDatasetSourceAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return BigQueryDatasetSourceAnalyticshubV1beta1(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
    );
  }
}

