// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafDomainsDomainDefenseScene {
  /// The type of protection policy.
  final pulumi.Input<String> defenseScene;
  /// The protection policy ID.
  final pulumi.Input<String> policyId;

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
      defenseScene: (map['defenseScene'] as String).input(),
      policyId: (map['policyId'] as String).input(),
    );
  }
}

