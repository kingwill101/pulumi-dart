// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainTechContactExtraParam {
  /// The name of an additional parameter that is required by a top-level domain.
  final pulumi.Input<String> name;

  /// The value that corresponds with the name of an extra parameter.
  final pulumi.Input<String> value;

  /// Creates a new [DomainTechContactExtraParam].
  /// [name] The name of an additional parameter that is required by a top-level domain.
  /// [value] The value that corresponds with the name of an extra parameter.
  DomainTechContactExtraParam({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory DomainTechContactExtraParam.fromMap(Map<String, dynamic> map) {
    return DomainTechContactExtraParam(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
