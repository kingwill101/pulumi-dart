// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTables.
class GetTablesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of all the DynamoDB table names found.
  final List<String> names;
  final String region;

  /// Creates a new [GetTablesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list of all the DynamoDB table names found.
  /// [region] Required.
  const GetTablesResult({
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

