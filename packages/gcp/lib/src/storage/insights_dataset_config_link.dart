// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigLink {
  /// (Output)
  /// Dataset name for the linked DatasetConfig.
  final String? dataset;

  /// (Output)
  /// State of the linked DatasetConfig.
  final bool? linked;

  /// Creates a new [InsightsDatasetConfigLink].
  /// [dataset] (Output)
  /// [linked] (Output)
  InsightsDatasetConfigLink({this.dataset, this.linked});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataset': ?dataset, 'linked': ?linked};
  }

  factory InsightsDatasetConfigLink.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigLink(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      linked: map['linked'] == null ? null : map['linked'] as bool,
    );
  }
}
