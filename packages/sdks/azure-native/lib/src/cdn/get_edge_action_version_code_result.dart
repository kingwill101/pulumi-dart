// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEdgeActionVersionCode.
class GetEdgeActionVersionCodeResult {
  /// The version code deployment content
  final String content;
  /// The version code name
  final String name;

  /// Creates a new [GetEdgeActionVersionCodeResult].
  /// [content] The version code deployment content
  /// [name] The version code name
  const GetEdgeActionVersionCodeResult({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': name,
    };
  }

  factory GetEdgeActionVersionCodeResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionCodeResult(
      content: map['content'] as String,
      name: map['name'] as String,
    );
  }
}

