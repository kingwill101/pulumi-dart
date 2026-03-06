// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcOriginVpcOriginEndpointConfigOriginSslProtocols {
  final pulumi.Input<List<String>> items;
  final pulumi.Input<int> quantity;

  /// Creates a new [VpcOriginVpcOriginEndpointConfigOriginSslProtocols].
  /// [items] Required.
  /// [quantity] Required.
  const VpcOriginVpcOriginEndpointConfigOriginSslProtocols({
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
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
      quantity: pulumi.Input.fromValue(map['quantity'] as int),
    );
  }
}

