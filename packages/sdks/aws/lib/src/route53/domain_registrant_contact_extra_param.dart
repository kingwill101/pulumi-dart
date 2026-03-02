// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRegistrantContactExtraParam {
  /// The name of an additional parameter that is required by a top-level domain.
  final pulumi.Input<String> name;
  /// The value that corresponds with the name of an extra parameter.
  final pulumi.Input<String> value;

  /// Creates a new [DomainRegistrantContactExtraParam].
  /// [name] The name of an additional parameter that is required by a top-level domain.
  /// [value] The value that corresponds with the name of an extra parameter.
  DomainRegistrantContactExtraParam({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainRegistrantContactExtraParam.fromMap(Map<String, dynamic> map) {
    return DomainRegistrantContactExtraParam(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

