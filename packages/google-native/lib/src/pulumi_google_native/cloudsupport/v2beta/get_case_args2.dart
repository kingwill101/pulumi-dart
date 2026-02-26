// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCase.
class GetCaseArgs2 {
  final Input<String> caseId;
  final Input<String> v2betaId1;
  final Input<String> v2betumId;

  GetCaseArgs2({
    required this.caseId,
    required this.v2betaId1,
    required this.v2betumId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseId'] = caseId;
    map['v2betaId1'] = v2betaId1;
    map['v2betumId'] = v2betumId;
    return map;
  }

  factory GetCaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetCaseArgs2(
      caseId: Input.asInput<String>(map['caseId']),
      v2betaId1: Input.asInput<String>(map['v2betaId1']),
      v2betumId: Input.asInput<String>(map['v2betumId']),
    );
  }
}
