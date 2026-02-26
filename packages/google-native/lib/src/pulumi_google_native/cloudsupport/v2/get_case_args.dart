// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCase.
class GetCaseArgs {
  final Input<String> caseId;
  final Input<String> v2Id;
  final Input<String> v2Id1;

  GetCaseArgs({
    required this.caseId,
    required this.v2Id,
    required this.v2Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseId'] = caseId;
    map['v2Id'] = v2Id;
    map['v2Id1'] = v2Id1;
    return map;
  }

  factory GetCaseArgs.fromMap(Map<String, dynamic> map) {
    return GetCaseArgs(
      caseId: Input.asInput<String>(map['caseId']),
      v2Id: Input.asInput<String>(map['v2Id']),
      v2Id1: Input.asInput<String>(map['v2Id1']),
    );
  }
}
