// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuotaApplicationDimension {
  /// The key of the dimension. You must configure `dimensions.N.key` and `dimensions.N.value` at the same time. The value range of N varies based on the number of dimensions that are supported by the related Alibaba Cloud service. You can call the [ListProductQuotaDimensions](https://next.api.aliyun.com/document/quotas/2020-05-10/ListProductQuotaDimensions) operation to query the dimensions that are supported by an Alibaba Cloud service. The number of elements in the returned array is N.
  final pulumi.Input<String>? key;

  /// The value of the dimension. You must configure `dimensions.N.key` and `dimensions.N.value` at the same time. The value range of N varies based on the number of dimensions that are supported by the related Alibaba Cloud service. You can call the [ListProductQuotaDimensions](https://next.api.aliyun.com/document/quotas/2020-05-10/ListProductQuotaDimensions) operation to query the dimensions that are supported by an Alibaba Cloud service. The number of elements in the returned array is N.
  final pulumi.Input<String>? value;

  /// Creates a new [QuotaApplicationDimension].
  /// [key] The key of the dimension. You must configure `dimensions.N.key` and `dimensions.N.value` at the same time. The value range of N varies based on the number of dimensions that are supported by the related Alibaba Cloud service. You can call the [ListProductQuotaDimensions](https://next.api.aliyun.com/document/quotas/2020-05-10/ListProductQuotaDimensions) operation to query the dimensions that are supported by an Alibaba Cloud service. The number of elements in the returned array is N.
  /// [value] The value of the dimension. You must configure `dimensions.N.key` and `dimensions.N.value` at the same time. The value range of N varies based on the number of dimensions that are supported by the related Alibaba Cloud service. You can call the [ListProductQuotaDimensions](https://next.api.aliyun.com/document/quotas/2020-05-10/ListProductQuotaDimensions) operation to query the dimensions that are supported by an Alibaba Cloud service. The number of elements in the returned array is N.
  QuotaApplicationDimension({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory QuotaApplicationDimension.fromMap(Map<String, dynamic> map) {
    return QuotaApplicationDimension(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
