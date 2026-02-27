// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'range_info_response.dart';

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigResponse {
  /// [Output only] Information for additional pod range.
  final List<RangeInfoResponse> podRangeInfo;

  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String> podRangeNames;

  AdditionalPodRangesConfigResponse({
    required this.podRangeInfo,
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podRangeInfo'] =
        pulumi.Input.encodeList<RangeInfoResponse, Map<String, dynamic>>(
            podRangeInfo, (value) => value.toMap());
    map['podRangeNames'] = podRangeNames;
    return map;
  }

  factory AdditionalPodRangesConfigResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfigResponse(
      podRangeInfo: pulumi.Input.decodeList<RangeInfoResponse>(
          map['podRangeInfo'],
          (value) => RangeInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      podRangeNames: (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
