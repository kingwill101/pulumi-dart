// ignore_for_file: unused_element, unnecessary_cast

class EndpointPolicyTrafficPortSelector {
  /// List of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  final List<String> ports;

  /// Creates a new [EndpointPolicyTrafficPortSelector].
  /// [ports] List of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  EndpointPolicyTrafficPortSelector({
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ports'] = ports;
    return map;
  }

  factory EndpointPolicyTrafficPortSelector.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyTrafficPortSelector(
      ports: (map['ports'] as List).cast<String>(),
    );
  }
}
