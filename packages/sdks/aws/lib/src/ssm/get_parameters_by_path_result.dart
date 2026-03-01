// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParametersByPath.
class GetParametersByPathResult {
  /// A list that contains the Amazon Resource Names (ARNs) of the retrieved parameters.
  final List<String> arns;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list that contains the names of the retrieved parameters.
  final List<String> names;
  final String path;
  final bool? recursive;
  final String region;
  /// A list that contains the types (`String`, `StringList`, or `SecureString`) of retrieved parameters.
  final List<String> types;
  /// A list that contains the retrieved parameter values. **Note:** This value is always marked as sensitive in the pulumi preview output, regardless of whether any retrieved parameters are of `SecureString` type. Use the `nonsensitive` function to override the behavior at your own risk and discretion, if you are certain that there are no sensitive values being retrieved.
  final List<String> values;
  final bool? withDecryption;

  /// Creates a new [GetParametersByPathResult].
  /// [arns] A list that contains the Amazon Resource Names (ARNs) of the retrieved parameters.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list that contains the names of the retrieved parameters.
  /// [path] Required.
  /// [recursive] Optional.
  /// [region] Required.
  /// [types] A list that contains the types (`String`, `StringList`, or `SecureString`) of retrieved parameters.
  /// [values] A list that contains the retrieved parameter values. **Note:** This value is always marked as sensitive in the pulumi preview output, regardless of whether any retrieved parameters are of `SecureString` type. Use the `nonsensitive` function to override the behavior at your own risk and discretion, if you are certain that there are no sensitive values being retrieved.
  /// [withDecryption] Optional.
  GetParametersByPathResult({
    required this.arns,
    required this.id,
    required this.names,
    required this.path,
    this.recursive,
    required this.region,
    required this.types,
    required this.values,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'names': names,
      'path': path,
      'recursive': ?recursive,
      'region': region,
      'types': types,
      'values': values,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetParametersByPathResult.fromMap(Map<String, dynamic> map) {
    return GetParametersByPathResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      path: map['path'] as String,
      recursive: map['recursive'] == null ? null : map['recursive'] as bool,
      region: map['region'] as String,
      types: (map['types'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
      withDecryption: map['withDecryption'] == null ? null : map['withDecryption'] as bool,
    );
  }
}

