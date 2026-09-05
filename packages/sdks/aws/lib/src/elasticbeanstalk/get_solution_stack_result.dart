// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSolutionStack.
class GetSolutionStackResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? mostRecent;
  /// Name of the solution stack.
  final String? name;
  final String? nameRegex;
  final String? region;

  /// Creates a new [GetSolutionStackResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mostRecent] Optional.
  /// [name] Name of the solution stack.
  /// [nameRegex] Optional.
  /// [region] Optional.
  const GetSolutionStackResult({
    this.id,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
    };
  }

  factory GetSolutionStackResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
