// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_policy_rule_local_data_local_data/response_policy_rule_local_data_local_data.dart';

class ResponsePolicyRuleLocalData {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  /// Structure is documented below.
  final List<ResponsePolicyRuleLocalDataLocalData> localDatas;

  ResponsePolicyRuleLocalData({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localDatas'] = Input.encodeList<ResponsePolicyRuleLocalDataLocalData,
        Map<String, dynamic>>(localDatas, (value) => value.toMap());
    return map;
  }

  factory ResponsePolicyRuleLocalData.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalData(
      localDatas: Input.decodeList<ResponsePolicyRuleLocalDataLocalData>(
          map['localDatas'],
          (value) => ResponsePolicyRuleLocalDataLocalData.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
