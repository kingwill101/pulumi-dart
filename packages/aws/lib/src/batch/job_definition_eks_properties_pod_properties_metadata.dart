// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesMetadata {
  /// Key-value pairs used to identify, sort, and organize kubernetes resources.
  final Map<String, String>? labels;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesMetadata].
  /// [labels] Key-value pairs used to identify, sort, and organize kubernetes resources.
  JobDefinitionEksPropertiesPodPropertiesMetadata({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesMetadata.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesMetadata(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
