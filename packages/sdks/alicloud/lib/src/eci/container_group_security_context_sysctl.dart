// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupSecurityContextSysctl {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? value;

  /// Creates a new [ContainerGroupSecurityContextSysctl].
  /// [name] Optional.
  /// [value] Optional.
  ContainerGroupSecurityContextSysctl({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory ContainerGroupSecurityContextSysctl.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerGroupSecurityContextSysctl(
      name: (() {
        final guardedValue = map['name'];
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
