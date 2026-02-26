// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for direct-path (via ALTS) with workload identity.
class WorkloadALTSConfigResponse {
  /// enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  final bool enableAlts;

  WorkloadALTSConfigResponse({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableAlts'] = enableAlts;
    return map;
  }

  factory WorkloadALTSConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadALTSConfigResponse(
      enableAlts: map['enableAlts'] as bool,
    );
  }
}
