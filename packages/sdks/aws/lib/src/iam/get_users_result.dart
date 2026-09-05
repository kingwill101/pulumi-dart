// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUsers.
class GetUsersResult {
  /// Set of ARNs of the matched IAM users.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? nameRegex;
  /// Set of Names of the matched IAM users.
  final List<String>? names;
  final String? pathPrefix;

  /// Creates a new [GetUsersResult].
  /// [arns] Set of ARNs of the matched IAM users.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] Set of Names of the matched IAM users.
  /// [pathPrefix] Optional.
  const GetUsersResult({
    this.arns,
    this.id,
    this.nameRegex,
    this.names,
    this.pathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'nameRegex': ?nameRegex,
      'names': ?names,
      'pathPrefix': ?pathPrefix,
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
