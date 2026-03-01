// ignore_for_file: unused_element, unnecessary_cast


class GetWafDomainsDomainDefenseScene {
  /// The type of protection policy.
  final String defenseScene;
  /// The protection policy ID.
  final String policyId;

  /// Creates a new [GetWafDomainsDomainDefenseScene].
  /// [defenseScene] The type of protection policy.
  /// [policyId] The protection policy ID.
  GetWafDomainsDomainDefenseScene({
    required this.defenseScene,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseScene': defenseScene,
      'policyId': policyId,
    };
  }

  factory GetWafDomainsDomainDefenseScene.fromMap(Map<String, dynamic> map) {
    return GetWafDomainsDomainDefenseScene(
      defenseScene: map['defenseScene'] as String,
      policyId: map['policyId'] as String,
    );
  }
}

