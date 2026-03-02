// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_advanced_options_udm_detail.dart';

class PolicyBindingAdvancedOptions {
  /// ECS Backup Advanced options See `udm_detail` below.
  final pulumi.Input<PolicyBindingAdvancedOptionsUdmDetail>? udmDetail;

  /// Creates a new [PolicyBindingAdvancedOptions].
  /// [udmDetail] ECS Backup Advanced options See `udm_detail` below.
  PolicyBindingAdvancedOptions({
    this.udmDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'udmDetail': ?pulumi.Input.mapOptionalInputValue<PolicyBindingAdvancedOptionsUdmDetail, Map<String, dynamic>>(udmDetail, (value) => value.toMap()),
    };
  }

  factory PolicyBindingAdvancedOptions.fromMap(Map<String, dynamic> map) {
    return PolicyBindingAdvancedOptions(
      udmDetail: map['udmDetail'] == null ? null : (PolicyBindingAdvancedOptionsUdmDetail.fromMap((map['udmDetail']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

