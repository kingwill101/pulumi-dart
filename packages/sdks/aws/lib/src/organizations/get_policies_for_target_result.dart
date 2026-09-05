// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPoliciesForTarget.
class GetPoliciesForTargetResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all the policy ids found.
  final List<String>? ids;
  final String? targetId;

  /// Creates a new [GetPoliciesForTargetResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the policy ids found.
  /// [targetId] Optional.
  const GetPoliciesForTargetResult({
    this.filter,
    this.id,
    this.ids,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'ids': ?ids,
      'targetId': ?targetId,
    };
  }

  factory GetPoliciesForTargetResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesForTargetResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
