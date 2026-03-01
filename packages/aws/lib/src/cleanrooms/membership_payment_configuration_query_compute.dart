// ignore_for_file: unused_element, unnecessary_cast

class MembershipPaymentConfigurationQueryCompute {
  /// Indicates whether the collaboration member has accepted to pay for query compute costs.
  final bool isResponsible;

  /// Creates a new [MembershipPaymentConfigurationQueryCompute].
  /// [isResponsible] Indicates whether the collaboration member has accepted to pay for query compute costs.
  MembershipPaymentConfigurationQueryCompute({required this.isResponsible});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isResponsible': isResponsible};
  }

  factory MembershipPaymentConfigurationQueryCompute.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipPaymentConfigurationQueryCompute(
      isResponsible: map['isResponsible'] as bool,
    );
  }
}
