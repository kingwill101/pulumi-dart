// ignore_for_file: unused_element, unnecessary_cast

import 'policy_binding_advanced_options_udm_detail.dart';

class PolicyBindingAdvancedOptions {
  /// ECS Backup Advanced options See `udm_detail` below.
  final PolicyBindingAdvancedOptionsUdmDetail? udmDetail;

  /// Creates a new [PolicyBindingAdvancedOptions].
  /// [udmDetail] ECS Backup Advanced options See `udm_detail` below.
  PolicyBindingAdvancedOptions({
    this.udmDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'udmDetail': ?udmDetail == null ? null : udmDetail!.toMap(),
    };
  }

  factory PolicyBindingAdvancedOptions.fromMap(Map<String, dynamic> map) {
    return PolicyBindingAdvancedOptions(
      udmDetail: map['udmDetail'] == null ? null : PolicyBindingAdvancedOptionsUdmDetail.fromMap((map['udmDetail'] as Map).cast<String, dynamic>()),
    );
  }
}

