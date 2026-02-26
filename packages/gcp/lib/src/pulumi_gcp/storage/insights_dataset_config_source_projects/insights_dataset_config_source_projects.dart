// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigSourceProjects {
  /// The list of project numbers to include in the DatasetConfig.
  final List<String>? projectNumbers;

  InsightsDatasetConfigSourceProjects({
    this.projectNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectNumbersValue = projectNumbers;
    if (projectNumbersValue != null) {
      map['projectNumbers'] = projectNumbersValue;
    }
    return map;
  }

  factory InsightsDatasetConfigSourceProjects.fromMap(
      Map<String, dynamic> map) {
    return InsightsDatasetConfigSourceProjects(
      projectNumbers: map['projectNumbers'] == null
          ? null
          : (map['projectNumbers'] as List).cast<String>(),
    );
  }
}
