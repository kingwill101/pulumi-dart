// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserPools.
class GetUserPoolsResult {
  /// Set of cognito user pool ARNs.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of cognito user pool ids.
  final List<String>? ids;
  final String? name;
  final String? region;

  /// Creates a new [GetUserPoolsResult].
  /// [arns] Set of cognito user pool ARNs.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of cognito user pool ids.
  /// [name] Optional.
  /// [region] Optional.
  const GetUserPoolsResult({
    this.arns,
    this.id,
    this.ids,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'ids': ?ids,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetUserPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
