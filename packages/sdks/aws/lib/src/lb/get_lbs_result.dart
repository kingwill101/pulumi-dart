// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLbs.
class GetLbsResult {
  /// Set of Load Balancer ARNs.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetLbsResult].
  /// [arns] Set of Load Balancer ARNs.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [tags] Optional.
  const GetLbsResult({
    this.arns,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLbsResult.fromMap(Map<String, dynamic> map) {
    return GetLbsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
