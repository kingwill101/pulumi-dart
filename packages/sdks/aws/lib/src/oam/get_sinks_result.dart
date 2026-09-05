// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSinks.
class GetSinksResult {
  /// Set of ARN of the Sinks.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetSinksResult].
  /// [arns] Set of ARN of the Sinks.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetSinksResult({
    this.arns,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetSinksResult.fromMap(Map<String, dynamic> map) {
    return GetSinksResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
