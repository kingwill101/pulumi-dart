// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlowStreamConnectionString.
class GetFlowStreamConnectionStringResult {
  /// The connection string for the specified streaming flow
  final String? connectionString;

  /// Creates a new [GetFlowStreamConnectionStringResult].
  /// [connectionString] The connection string for the specified streaming flow
  const GetFlowStreamConnectionStringResult({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory GetFlowStreamConnectionStringResult.fromMap(Map<String, dynamic> map) {
    return GetFlowStreamConnectionStringResult(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
