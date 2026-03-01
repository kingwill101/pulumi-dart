// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiKnowledgeBasesSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiKnowledgeBasesSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiKnowledgeBasesSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiKnowledgeBasesSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBasesSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

