// ignore_for_file: unused_element, unnecessary_cast


class GetAccountVirtualNetworkRule {
  /// The ID of the virtual network subnet.
  final String id;

  /// Creates a new [GetAccountVirtualNetworkRule].
  /// [id] The ID of the virtual network subnet.
  GetAccountVirtualNetworkRule({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetAccountVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return GetAccountVirtualNetworkRule(
      id: map['id'] as String,
    );
  }
}

