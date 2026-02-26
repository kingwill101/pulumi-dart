// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegions.
class GetRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of regions available in the given project
  final List<String> names;
  final String project;
  final String? status;

  GetRegionsResult({
    required this.id,
    required this.names,
    required this.project,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['names'] = names;
    map['project'] = project;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      project: map['project'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
