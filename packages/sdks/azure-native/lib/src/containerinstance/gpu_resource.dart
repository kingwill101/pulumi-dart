// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GPU resource.
class GpuResource {
  /// The count of the GPU resource.
  final pulumi.Input<int> count;
  /// The SKU of the GPU resource.
  final pulumi.Input<dynamic> sku;

  /// Creates a new [GpuResource].
  /// [count] The count of the GPU resource.
  /// [sku] The SKU of the GPU resource.
  const GpuResource({
    required this.count,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'sku': sku,
    };
  }

  factory GpuResource.fromMap(Map<String, dynamic> map) {
    return GpuResource(
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
      sku: pulumi.Input.fromValue(map['sku']),
    );
  }
}
