// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceProfiles.
class GetInstanceProfilesResult {
  /// Set of ARNs of instance profiles.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of IAM instance profile names.
  final List<String>? names;
  /// Set of IAM instance profile paths.
  final List<String>? paths;
  final String? roleName;

  /// Creates a new [GetInstanceProfilesResult].
  /// [arns] Set of ARNs of instance profiles.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of IAM instance profile names.
  /// [paths] Set of IAM instance profile paths.
  /// [roleName] Optional.
  const GetInstanceProfilesResult({
    this.arns,
    this.id,
    this.names,
    this.paths,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'names': ?names,
      'paths': ?paths,
      'roleName': ?roleName,
    };
  }

  factory GetInstanceProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfilesResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
