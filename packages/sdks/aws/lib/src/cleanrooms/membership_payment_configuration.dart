// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_payment_configuration_query_compute.dart';

class MembershipPaymentConfiguration {
  final pulumi.Input<MembershipPaymentConfigurationQueryCompute> queryCompute;

  /// Creates a new [MembershipPaymentConfiguration].
  /// [queryCompute] Required.
  MembershipPaymentConfiguration({required this.queryCompute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryCompute':
          pulumi.Input.mapInputValue<
            MembershipPaymentConfigurationQueryCompute,
            Map<String, dynamic>
          >(queryCompute, (value) => value.toMap()),
    };
  }

  factory MembershipPaymentConfiguration.fromMap(Map<String, dynamic> map) {
    return MembershipPaymentConfiguration(
      queryCompute: pulumi.Input.fromValue(
        MembershipPaymentConfigurationQueryCompute.fromMap(
          (map['queryCompute']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
