// ignore_for_file: unused_element, unnecessary_cast

class RouterNatNat64Subnetwork {
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final String name;

  /// Creates a new [RouterNatNat64Subnetwork].
  /// [name] Name of the NAT service. The name must be 1-63 characters long and
  RouterNatNat64Subnetwork({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RouterNatNat64Subnetwork.fromMap(Map<String, dynamic> map) {
    return RouterNatNat64Subnetwork(
      name: map['name'] as String,
    );
  }
}
