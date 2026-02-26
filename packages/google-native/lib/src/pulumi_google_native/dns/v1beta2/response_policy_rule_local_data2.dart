// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_record_set2.dart';

class ResponsePolicyRuleLocalData2 {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSet2>? localDatas;

  ResponsePolicyRuleLocalData2({
    this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localDatasValue = localDatas;
    if (localDatasValue != null) {
      map['localDatas'] =
          Input.encodeList<ResourceRecordSet2, Map<String, dynamic>>(
              localDatasValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponsePolicyRuleLocalData2.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalData2(
      localDatas: map['localDatas'] == null
          ? null
          : Input.decodeList<ResourceRecordSet2>(
              map['localDatas'],
              (value) => ResourceRecordSet2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
