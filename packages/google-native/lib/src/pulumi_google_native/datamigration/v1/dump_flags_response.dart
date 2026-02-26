// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'dump_flag_response.dart';

/// Dump flags definition.
class DumpFlagsResponse {
  /// The flags for the initial dump.
  final List<DumpFlagResponse> dumpFlags;

  DumpFlagsResponse({
    required this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dumpFlags'] = Input.encodeList<DumpFlagResponse, Map<String, dynamic>>(
        dumpFlags, (value) => value.toMap());
    return map;
  }

  factory DumpFlagsResponse.fromMap(Map<String, dynamic> map) {
    return DumpFlagsResponse(
      dumpFlags: Input.decodeList<DumpFlagResponse>(
          map['dumpFlags'],
          (value) =>
              DumpFlagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
