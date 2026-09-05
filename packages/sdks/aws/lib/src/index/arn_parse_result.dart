// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by arnParse.
class ArnParseResult {
  final String? accountId;
  final String? partition;
  final String? region;
  final String? resource;
  final String? service;

  /// Creates a new [ArnParseResult].
  /// [accountId] Optional.
  /// [partition] Optional.
  /// [region] Optional.
  /// [resource] Optional.
  /// [service] Optional.
  const ArnParseResult({
    this.accountId,
    this.partition,
    this.region,
    this.resource,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'partition': ?partition,
      'region': ?region,
      'resource': ?resource,
      'service': ?service,
    };
  }

  factory ArnParseResult.fromMap(Map<String, dynamic> map) {
    return ArnParseResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
