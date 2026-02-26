// ignore_for_file: unused_element, unnecessary_cast

/// Endpoint config for this cluster
class EndpointConfig2 {
  /// Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final bool? enableHttpPortAccess;

  EndpointConfig2({
    this.enableHttpPortAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableHttpPortAccessValue = enableHttpPortAccess;
    if (enableHttpPortAccessValue != null) {
      map['enableHttpPortAccess'] = enableHttpPortAccessValue;
    }
    return map;
  }

  factory EndpointConfig2.fromMap(Map<String, dynamic> map) {
    return EndpointConfig2(
      enableHttpPortAccess: map['enableHttpPortAccess'] == null
          ? null
          : map['enableHttpPortAccess'] as bool,
    );
  }
}
