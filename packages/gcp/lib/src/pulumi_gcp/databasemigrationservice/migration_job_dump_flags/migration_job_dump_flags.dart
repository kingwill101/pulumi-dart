// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../migration_job_dump_flags_dump_flag/migration_job_dump_flags_dump_flag.dart';

class MigrationJobDumpFlags {
  /// A list of dump flags
  /// Structure is documented below.
  final List<MigrationJobDumpFlagsDumpFlag>? dumpFlags;

  MigrationJobDumpFlags({
    this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dumpFlagsValue = dumpFlags;
    if (dumpFlagsValue != null) {
      map['dumpFlags'] = pulumi.Input.encodeList<MigrationJobDumpFlagsDumpFlag,
          Map<String, dynamic>>(dumpFlagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobDumpFlags.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlags(
      dumpFlags: map['dumpFlags'] == null
          ? null
          : pulumi.Input.decodeList<MigrationJobDumpFlagsDumpFlag>(
              map['dumpFlags'],
              (value) => MigrationJobDumpFlagsDumpFlag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
