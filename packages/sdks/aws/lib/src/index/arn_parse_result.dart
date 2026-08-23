// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by arnParse.
class ArnParseResult {
  final String accountId;
  final String partition;
  final String region;
  final String resource;
  final String service;

  /// Creates a new [ArnParseResult].
  /// [accountId] Required.
  /// [partition] Required.
  /// [region] Required.
  /// [resource] Required.
  /// [service] Required.
  const ArnParseResult({
    required this.accountId,
    required this.partition,
    required this.region,
    required this.resource,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'partition': partition,
      'region': region,
      'resource': resource,
      'service': service,
    };
  }

  factory ArnParseResult.fromMap(Map<String, dynamic> map) {
    return ArnParseResult(
      accountId: map['accountId'] as String,
      partition: map['partition'] as String,
      region: map['region'] as String,
      resource: map['resource'] as String,
      service: map['service'] as String,
    );
  }
}
