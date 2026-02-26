// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigLink {
  /// (Output)
  /// Dataset name for the linked DatasetConfig.
  final String? dataset;

  /// (Output)
  /// State of the linked DatasetConfig.
  final bool? linked;

  InsightsDatasetConfigLink({
    this.dataset,
    this.linked,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final linkedValue = linked;
    if (linkedValue != null) {
      map['linked'] = linkedValue;
    }
    return map;
  }

  factory InsightsDatasetConfigLink.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigLink(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      linked: map['linked'] == null ? null : map['linked'] as bool,
    );
  }
}
