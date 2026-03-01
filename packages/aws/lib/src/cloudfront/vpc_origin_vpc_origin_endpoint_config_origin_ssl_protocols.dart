// ignore_for_file: unused_element, unnecessary_cast


class VpcOriginVpcOriginEndpointConfigOriginSslProtocols {
  final List<String> items;
  final int quantity;

  /// Creates a new [VpcOriginVpcOriginEndpointConfigOriginSslProtocols].
  /// [items] Required.
  /// [quantity] Required.
  VpcOriginVpcOriginEndpointConfigOriginSslProtocols({
    required this.items,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
      'quantity': quantity,
    };
  }

  factory VpcOriginVpcOriginEndpointConfigOriginSslProtocols.fromMap(Map<String, dynamic> map) {
    return VpcOriginVpcOriginEndpointConfigOriginSslProtocols(
      items: (map['items'] as List).cast<String>(),
      quantity: map['quantity'] as int,
    );
  }
}

