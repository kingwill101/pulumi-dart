// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLinks.
class GetLinksResult {
  /// Set of ARN of the Links.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetLinksResult].
  /// [arns] Set of ARN of the Links.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetLinksResult({
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

  factory GetLinksResult.fromMap(Map<String, dynamic> map) {
    return GetLinksResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
