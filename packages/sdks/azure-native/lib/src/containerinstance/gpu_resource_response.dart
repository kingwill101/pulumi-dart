// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The GPU resource.
class GpuResourceResponse {
  /// The count of the GPU resource.
  final pulumi.Input<int> count;
  /// The SKU of the GPU resource.
  final pulumi.Input<String> sku;

  /// Creates a new [GpuResourceResponse].
  /// [count] The count of the GPU resource.
  /// [sku] The SKU of the GPU resource.
  GpuResourceResponse({
    required this.count,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'sku': sku,
    };
  }

  factory GpuResourceResponse.fromMap(Map<String, dynamic> map) {
    return GpuResourceResponse(
      count: (map['count'] as int).input(),
      sku: (map['sku'] as String).input(),
    );
  }
}

