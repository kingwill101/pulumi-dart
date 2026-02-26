// ignore_for_file: unused_element, unnecessary_cast

/// Specification of a port-based selector.
class TrafficPortSelector2 {
  /// Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  final List<String>? ports;

  TrafficPortSelector2({
    this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    return map;
  }

  factory TrafficPortSelector2.fromMap(Map<String, dynamic> map) {
    return TrafficPortSelector2(
      ports:
          map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}
