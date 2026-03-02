// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOtsBackupPlansPlanOtsDetail {
  final pulumi.Input<List<String>> tableNames;

  /// Creates a new [GetOtsBackupPlansPlanOtsDetail].
  /// [tableNames] Required.
  GetOtsBackupPlansPlanOtsDetail({
    required this.tableNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableNames': tableNames,
    };
  }

  factory GetOtsBackupPlansPlanOtsDetail.fromMap(Map<String, dynamic> map) {
    return GetOtsBackupPlansPlanOtsDetail(
      tableNames: ((map['tableNames'] as List).cast<String>()).input(),
    );
  }
}

