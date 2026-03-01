// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlowStreamConnectionString.
class GetFlowStreamConnectionStringResult {
  /// The connection string for the specified streaming flow
  final String? connectionString;

  /// Creates a new [GetFlowStreamConnectionStringResult].
  /// [connectionString] The connection string for the specified streaming flow
  GetFlowStreamConnectionStringResult({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory GetFlowStreamConnectionStringResult.fromMap(Map<String, dynamic> map) {
    return GetFlowStreamConnectionStringResult(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
    );
  }
}

