// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'range_info_response2.dart';

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigResponse2 {
  /// [Output only] Information for additional pod range.
  final List<RangeInfoResponse2> podRangeInfo;

  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String> podRangeNames;

  AdditionalPodRangesConfigResponse2({
    required this.podRangeInfo,
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podRangeInfo'] =
        Input.encodeList<RangeInfoResponse2, Map<String, dynamic>>(
            podRangeInfo, (value) => value.toMap());
    map['podRangeNames'] = podRangeNames;
    return map;
  }

  factory AdditionalPodRangesConfigResponse2.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfigResponse2(
      podRangeInfo: Input.decodeList<RangeInfoResponse2>(
          map['podRangeInfo'],
          (value) => RangeInfoResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      podRangeNames: (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
