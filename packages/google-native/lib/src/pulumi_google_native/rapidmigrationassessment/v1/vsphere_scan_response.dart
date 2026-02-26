// ignore_for_file: unused_element, unnecessary_cast

/// Message describing a MC Source of type VSphere Scan.
class VSphereScanResponse {
  /// reference to the corresponding VSphere Scan in MC Source.
  final String coreSource;

  VSphereScanResponse({
    required this.coreSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreSource'] = coreSource;
    return map;
  }

  factory VSphereScanResponse.fromMap(Map<String, dynamic> map) {
    return VSphereScanResponse(
      coreSource: map['coreSource'] as String,
    );
  }
}
