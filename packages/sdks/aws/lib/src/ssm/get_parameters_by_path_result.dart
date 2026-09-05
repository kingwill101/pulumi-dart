// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParametersByPath.
class GetParametersByPathResult {
  /// List that contains the ARNs of the retrieved parameters.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list that contains the names of the retrieved parameters.
  final List<String>? names;
  final String? path;
  final bool? recursive;
  final String? region;
  /// A list that contains the types (`String`, `StringList`, or `SecureString`) of retrieved parameters.
  final List<String>? types;
  /// A list that contains the retrieved parameter values. **Note:** This value is always marked as sensitive in the pulumi preview output, regardless of whether any retrieved parameters are of `SecureString` type. Use the `nonsensitive` function to override the behavior at your own risk and discretion, if you are certain that there are no sensitive values being retrieved.
  final List<String>? values;
  final bool? withDecryption;

  /// Creates a new [GetParametersByPathResult].
  /// [arns] List that contains the ARNs of the retrieved parameters.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list that contains the names of the retrieved parameters.
  /// [path] Optional.
  /// [recursive] Optional.
  /// [region] Optional.
  /// [types] A list that contains the types (`String`, `StringList`, or `SecureString`) of retrieved parameters.
  /// [values] A list that contains the retrieved parameter values. **Note:** This value is always marked as sensitive in the pulumi preview output, regardless of whether any retrieved parameters are of `SecureString` type. Use the `nonsensitive` function to override the behavior at your own risk and discretion, if you are certain that there are no sensitive values being retrieved.
  /// [withDecryption] Optional.
  const GetParametersByPathResult({
    this.arns,
    this.id,
    this.names,
    this.path,
    this.recursive,
    this.region,
    this.types,
    this.values,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'names': ?names,
      'path': ?path,
      'recursive': ?recursive,
      'region': ?region,
      'types': ?types,
      'values': ?values,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetParametersByPathResult.fromMap(Map<String, dynamic> map) {
    return GetParametersByPathResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recursive: (() { final guardedValue = map['recursive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      withDecryption: (() { final guardedValue = map['withDecryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
