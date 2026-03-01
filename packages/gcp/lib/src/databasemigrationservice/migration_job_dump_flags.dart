// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_dump_flags_dump_flag.dart';

class MigrationJobDumpFlags {
  /// A list of dump flags
  /// Structure is documented below.
  final List<MigrationJobDumpFlagsDumpFlag>? dumpFlags;

  /// Creates a new [MigrationJobDumpFlags].
  /// [dumpFlags] A list of dump flags
  MigrationJobDumpFlags({
    this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpFlags': ?dumpFlags == null ? null : pulumi.Input.encodeList<MigrationJobDumpFlagsDumpFlag, Map<String, dynamic>>(dumpFlags!, (value) => value.toMap()),
    };
  }

  factory MigrationJobDumpFlags.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlags(
      dumpFlags: map['dumpFlags'] == null ? null : pulumi.Input.decodeList<MigrationJobDumpFlagsDumpFlag>(map['dumpFlags'], (value) => MigrationJobDumpFlagsDumpFlag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

