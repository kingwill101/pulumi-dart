// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool? enabled;

  /// Creates a new [BackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  BackendServiceDynamicForwardingIpPortSelection({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory BackendServiceDynamicForwardingIpPortSelection.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
