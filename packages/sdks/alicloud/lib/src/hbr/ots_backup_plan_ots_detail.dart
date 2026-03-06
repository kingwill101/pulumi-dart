// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OtsBackupPlanOtsDetail {
  /// The names of the destination tables in the Tablestore instance. **Note:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<List<String>>? tableNames;

  /// Creates a new [OtsBackupPlanOtsDetail].
  /// [tableNames] The names of the destination tables in the Tablestore instance. **Note:** Required while source_type equals `OTS_TABLE`.
  const OtsBackupPlanOtsDetail({
    this.tableNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableNames': ?tableNames,
    };
  }

  factory OtsBackupPlanOtsDetail.fromMap(Map<String, dynamic> map) {
    return OtsBackupPlanOtsDetail(
      tableNames: (() { final guardedValue = map['tableNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

