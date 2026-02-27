// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dump_flag.dart';

/// Dump flags definition.
class DumpFlags {
  /// The flags for the initial dump.
  final List<DumpFlag>? dumpFlags;

  DumpFlags({
    this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dumpFlagsValue = dumpFlags;
    if (dumpFlagsValue != null) {
      map['dumpFlags'] = Input.encodeList<DumpFlag, Map<String, dynamic>>(
          dumpFlagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DumpFlags.fromMap(Map<String, dynamic> map) {
    return DumpFlags(
      dumpFlags: map['dumpFlags'] == null
          ? null
          : Input.decodeList<DumpFlag>(
              map['dumpFlags'],
              (value) =>
                  DumpFlag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
