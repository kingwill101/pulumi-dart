// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigSourceProject {
  /// The list of project numbers to include in the DatasetConfig.
  final List<String> projectNumbers;

  /// Creates a new [GetInsightsDatasetConfigSourceProject].
  /// [projectNumbers] The list of project numbers to include in the DatasetConfig.
  GetInsightsDatasetConfigSourceProject({
    required this.projectNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectNumbers'] = projectNumbers;
    return map;
  }

  factory GetInsightsDatasetConfigSourceProject.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigSourceProject(
      projectNumbers: (map['projectNumbers'] as List).cast<String>(),
    );
  }
}
