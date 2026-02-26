// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The workspace's name.
  final String name;

  GetWorkspaceResult({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      name: map['name'] as String,
    );
  }
}
