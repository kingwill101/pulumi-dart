// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualBorderRoutersFilter {
  /// The key of the field to filter by, as defined by
  /// [Alibaba Cloud API](https://www.alibabacloud.com/help/en/doc-detail/124791.htm).
  final pulumi.Input<String>? key;

  /// Set of values that are accepted for the given field.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetVirtualBorderRoutersFilter].
  /// [key] The key of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVirtualBorderRoutersFilter({this.key, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'values': ?values};
  }

  factory GetVirtualBorderRoutersFilter.fromMap(Map<String, dynamic> map) {
    return GetVirtualBorderRoutersFilter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
