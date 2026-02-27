// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set.dart';

class ResponsePolicyRuleLocalData {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSet>? localDatas;

  ResponsePolicyRuleLocalData({
    this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localDatasValue = localDatas;
    if (localDatasValue != null) {
      map['localDatas'] =
          pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(
              localDatasValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponsePolicyRuleLocalData.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalData(
      localDatas: map['localDatas'] == null
          ? null
          : pulumi.Input.decodeList<ResourceRecordSet>(
              map['localDatas'],
              (value) => ResourceRecordSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
