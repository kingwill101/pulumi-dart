// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSolutionStack.
class GetSolutionStackResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? mostRecent;

  /// Name of the solution stack.
  final String name;
  final String nameRegex;
  final String region;

  /// Creates a new [GetSolutionStackResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mostRecent] Optional.
  /// [name] Name of the solution stack.
  /// [nameRegex] Required.
  /// [region] Required.
  GetSolutionStackResult({
    required this.id,
    this.mostRecent,
    required this.name,
    required this.nameRegex,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['name'] = name;
    map['nameRegex'] = nameRegex;
    map['region'] = region;
    return map;
  }

  factory GetSolutionStackResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackResult(
      id: map['id'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] as String,
      nameRegex: map['nameRegex'] as String,
      region: map['region'] as String,
    );
  }
}
