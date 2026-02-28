// ignore_for_file: unused_element, unnecessary_cast

/// Deprecated.
class AvailableVersionResponse {
  /// Reason for availability.
  final String reason;

  /// Kubernetes version.
  final String version;

  /// Creates a new [AvailableVersionResponse].
  /// [reason] Reason for availability.
  /// [version] Kubernetes version.
  AvailableVersionResponse({
    required this.reason,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reason'] = reason;
    map['version'] = version;
    return map;
  }

  factory AvailableVersionResponse.fromMap(Map<String, dynamic> map) {
    return AvailableVersionResponse(
      reason: map['reason'] as String,
      version: map['version'] as String,
    );
  }
}
