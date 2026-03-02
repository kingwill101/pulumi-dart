// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipPaymentConfigurationQueryCompute {
  /// Indicates whether the collaboration member has accepted to pay for query compute costs.
  final pulumi.Input<bool> isResponsible;

  /// Creates a new [MembershipPaymentConfigurationQueryCompute].
  /// [isResponsible] Indicates whether the collaboration member has accepted to pay for query compute costs.
  MembershipPaymentConfigurationQueryCompute({
    required this.isResponsible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isResponsible': isResponsible,
    };
  }

  factory MembershipPaymentConfigurationQueryCompute.fromMap(Map<String, dynamic> map) {
    return MembershipPaymentConfigurationQueryCompute(
      isResponsible: (map['isResponsible'] as bool).input(),
    );
  }
}

