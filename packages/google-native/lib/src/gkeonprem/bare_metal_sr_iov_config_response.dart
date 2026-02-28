// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfigResponse {
  /// Whether to install the SR-IOV operator.
  final bool enabled;

  /// Creates a new [BareMetalSrIovConfigResponse].
  /// [enabled] Whether to install the SR-IOV operator.
  BareMetalSrIovConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BareMetalSrIovConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalSrIovConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

