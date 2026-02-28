// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyMetadata {
  /// Key-value pairs used to identify, sort, and organize cube resources.
  final Map<String, String> labels;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyMetadata].
  /// [labels] Key-value pairs used to identify, sort, and organize cube resources.
  GetJobDefinitionEksPropertyPodPropertyMetadata({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyMetadata.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyMetadata(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
