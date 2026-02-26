// ignore_for_file: unused_element, unnecessary_cast

class VpcOriginVpcOriginEndpointConfigOriginSslProtocols {
  final List<String> items;
  final int quantity;

  VpcOriginVpcOriginEndpointConfigOriginSslProtocols({
    required this.items,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    map['quantity'] = quantity;
    return map;
  }

  factory VpcOriginVpcOriginEndpointConfigOriginSslProtocols.fromMap(
      Map<String, dynamic> map) {
    return VpcOriginVpcOriginEndpointConfigOriginSslProtocols(
      items: (map['items'] as List).cast<String>(),
      quantity: map['quantity'] as int,
    );
  }
}
