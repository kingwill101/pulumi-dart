// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRulesPackages.
class GetRulesPackagesResult {
  /// List of the Amazon Inspector Classic Rules Packages arns available in the AWS region.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetRulesPackagesResult].
  /// [arns] List of the Amazon Inspector Classic Rules Packages arns available in the AWS region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetRulesPackagesResult({
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

  factory GetRulesPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesPackagesResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
