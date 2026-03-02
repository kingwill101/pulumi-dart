// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OtsBackupPlanOtsDetail {
  /// The names of the destination tables in the Tablestore instance. **Note:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<List<String>>? tableNames;

  /// Creates a new [OtsBackupPlanOtsDetail].
  /// [tableNames] The names of the destination tables in the Tablestore instance. **Note:** Required while source_type equals `OTS_TABLE`.
  OtsBackupPlanOtsDetail({
    this.tableNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableNames': ?tableNames,
    };
  }

  factory OtsBackupPlanOtsDetail.fromMap(Map<String, dynamic> map) {
    return OtsBackupPlanOtsDetail(
      tableNames: map['tableNames'] == null ? null : ((map['tableNames'] as List).cast<String>()).input(),
    );
  }
}

