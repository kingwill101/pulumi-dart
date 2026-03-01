// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dump_flag.dart';

/// Dump flags definition.
class DumpFlags {
  /// The flags for the initial dump.
  final List<DumpFlag>? dumpFlags;

  /// Creates a new [DumpFlags].
  /// [dumpFlags] The flags for the initial dump.
  DumpFlags({this.dumpFlags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpFlags': ?dumpFlags == null
          ? null
          : pulumi.Input.encodeList<DumpFlag, Map<String, dynamic>>(
              dumpFlags!,
              (value) => value.toMap(),
            ),
    };
  }

  factory DumpFlags.fromMap(Map<String, dynamic> map) {
    return DumpFlags(
      dumpFlags: map['dumpFlags'] == null
          ? null
          : pulumi.Input.decodeList<DumpFlag>(
              map['dumpFlags'],
              (value) =>
                  DumpFlag.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
