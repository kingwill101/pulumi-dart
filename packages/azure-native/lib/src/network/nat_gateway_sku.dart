// ignore_for_file: unused_element, unnecessary_cast


/// SKU of nat gateway.
class NatGatewaySku {
  /// Name of Nat Gateway SKU.
  final String? name;

  /// Creates a new [NatGatewaySku].
  /// [name] Name of Nat Gateway SKU.
  NatGatewaySku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NatGatewaySku.fromMap(Map<String, dynamic> map) {
    return NatGatewaySku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

