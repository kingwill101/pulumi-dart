// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTables.
class GetTablesResult {
  /// A list of all the DynamoDB table names found.
  final List<String>? names;
  final String? region;

  /// Creates a new [GetTablesResult].
  /// [names] A list of all the DynamoDB table names found.
  /// [region] Optional.
  const GetTablesResult({
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
