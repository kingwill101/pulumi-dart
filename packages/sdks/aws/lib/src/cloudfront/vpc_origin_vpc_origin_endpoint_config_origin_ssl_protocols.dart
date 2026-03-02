// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcOriginVpcOriginEndpointConfigOriginSslProtocols {
  final pulumi.Input<List<String>> items;
  final pulumi.Input<int> quantity;

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
      items: ((map['items'] as List).cast<String>()).input(),
      quantity: (map['quantity'] as int).input(),
    );
  }
}

