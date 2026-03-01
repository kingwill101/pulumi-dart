// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kernels_filter.dart';
import 'get_kernels_kernel.dart';

/// Result data returned by getKernels.
class GetKernelsResult {
  final List<GetKernelsFilter>? filters;
  /// The unique ID of this Kernel.
  final String id;
  final List<GetKernelsKernel> kernels;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetKernelsResult].
  /// [filters] Optional.
  /// [id] The unique ID of this Kernel.
  /// [kernels] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetKernelsResult({
    this.filters,
    required this.id,
    required this.kernels,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetKernelsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'kernels': pulumi.Input.encodeList<GetKernelsKernel, Map<String, dynamic>>(kernels, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetKernelsResult.fromMap(Map<String, dynamic> map) {
    return GetKernelsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetKernelsFilter>(map['filters'], (value) => GetKernelsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kernels: pulumi.Input.decodeList<GetKernelsKernel>(map['kernels'], (value) => GetKernelsKernel.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

