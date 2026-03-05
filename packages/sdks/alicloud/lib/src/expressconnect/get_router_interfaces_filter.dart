// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterInterfacesFilter {
  final pulumi.Input<String>? key;
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetRouterInterfacesFilter].
  /// [key] Optional.
  /// [values] Optional.
  GetRouterInterfacesFilter({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory GetRouterInterfacesFilter.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesFilter(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

