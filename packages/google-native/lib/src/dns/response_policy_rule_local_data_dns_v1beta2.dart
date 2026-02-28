// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_dns_v1beta2.dart';

class ResponsePolicyRuleLocalDataDnsV1beta2 {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSetDnsV1beta2>? localDatas;

  /// Creates a new [ResponsePolicyRuleLocalDataDnsV1beta2].
  /// [localDatas] All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  ResponsePolicyRuleLocalDataDnsV1beta2({
    this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localDatasValue = localDatas;
    if (localDatasValue != null) {
      map['localDatas'] = pulumi.Input.encodeList<ResourceRecordSetDnsV1beta2,
          Map<String, dynamic>>(localDatasValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponsePolicyRuleLocalDataDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataDnsV1beta2(
      localDatas: map['localDatas'] == null
          ? null
          : pulumi.Input.decodeList<ResourceRecordSetDnsV1beta2>(
              map['localDatas'],
              (value) => ResourceRecordSetDnsV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
