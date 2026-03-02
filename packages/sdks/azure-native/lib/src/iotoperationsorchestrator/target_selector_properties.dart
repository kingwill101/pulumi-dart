// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the reference target.
class TargetSelectorProperties {
  /// Name of the target.
  final pulumi.Input<String>? name;

  /// Creates a new [TargetSelectorProperties].
  /// [name] Name of the target.
  TargetSelectorProperties({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory TargetSelectorProperties.fromMap(Map<String, dynamic> map) {
    return TargetSelectorProperties(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

