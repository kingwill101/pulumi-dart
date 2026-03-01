// ignore_for_file: unused_element, unnecessary_cast

import 'membership_payment_configuration_query_compute.dart';

class MembershipPaymentConfiguration {
  final MembershipPaymentConfigurationQueryCompute queryCompute;

  /// Creates a new [MembershipPaymentConfiguration].
  /// [queryCompute] Required.
  MembershipPaymentConfiguration({
    required this.queryCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryCompute': queryCompute.toMap(),
    };
  }

  factory MembershipPaymentConfiguration.fromMap(Map<String, dynamic> map) {
    return MembershipPaymentConfiguration(
      queryCompute: MembershipPaymentConfigurationQueryCompute.fromMap((map['queryCompute'] as Map).cast<String, dynamic>()),
    );
  }
}

