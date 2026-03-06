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
  const GetSolutionStackResult({
    required this.id,
    this.mostRecent,
    required this.name,
    required this.nameRegex,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mostRecent': ?mostRecent,
      'name': name,
      'nameRegex': nameRegex,
      'region': region,
    };
  }

  factory GetSolutionStackResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackResult(
      id: map['id'] as String,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      nameRegex: map['nameRegex'] as String,
      region: map['region'] as String,
    );
  }
}

