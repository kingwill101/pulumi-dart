// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunctions.
class GetFunctionsResult {
  /// List of Lambda Function ARNs.
  final List<String> functionArns;
  /// List of Lambda Function names.
  final List<String> functionNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetFunctionsResult].
  /// [functionArns] List of Lambda Function ARNs.
  /// [functionNames] List of Lambda Function names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetFunctionsResult({
    required this.functionArns,
    required this.functionNames,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArns': functionArns,
      'functionNames': functionNames,
      'id': id,
      'region': region,
    };
  }

  factory GetFunctionsResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionsResult(
      functionArns: (map['functionArns'] as List).cast<String>(),
      functionNames: (map['functionNames'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

