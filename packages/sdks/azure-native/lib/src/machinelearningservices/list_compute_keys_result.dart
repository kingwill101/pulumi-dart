// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listComputeKeys.
class ListComputeKeysResult {
  /// The type of compute
  final String computeType;

  /// Creates a new [ListComputeKeysResult].
  /// [computeType] The type of compute
  ListComputeKeysResult({
    required this.computeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': computeType,
    };
  }

  factory ListComputeKeysResult.fromMap(Map<String, dynamic> map) {
    return ListComputeKeysResult(
      computeType: map['computeType'] as String,
    );
  }
}

