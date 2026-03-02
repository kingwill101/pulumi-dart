// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bandwidth_limits_limit.dart';

/// Result data returned by getBandwidthLimits.
class GetBandwidthLimitsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? instanceIds;
  /// A list of CEN Bandwidth Limits. Each element contains the following attributes:
  final List<GetBandwidthLimitsLimit> limits;
  final String? outputFile;

  /// Creates a new [GetBandwidthLimitsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceIds] Optional.
  /// [limits] A list of CEN Bandwidth Limits. Each element contains the following attributes:
  /// [outputFile] Optional.
  GetBandwidthLimitsResult({
    required this.id,
    this.instanceIds,
    required this.limits,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceIds': ?instanceIds,
      'limits': pulumi.Input.encodeList<GetBandwidthLimitsLimit, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetBandwidthLimitsResult.fromMap(Map<String, dynamic> map) {
    return GetBandwidthLimitsResult(
      id: map['id'] as String,
      instanceIds: map['instanceIds'] == null ? null : (map['instanceIds']! as List).cast<String>(),
      limits: pulumi.Input.decodeList<GetBandwidthLimitsLimit>(map['limits'], (value) => GetBandwidthLimitsLimit.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

