// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicies.
class GetPoliciesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all the policy ids found.
  final List<String>? ids;

  /// Creates a new [GetPoliciesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the policy ids found.
  const GetPoliciesResult({
    this.filter,
    this.id,
    this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'ids': ?ids,
    };
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
