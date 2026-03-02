// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret definition.
class Secret {
  /// Secret Name.
  final pulumi.Input<String>? name;
  /// Secret Value.
  final pulumi.Input<String>? value;

  /// Creates a new [Secret].
  /// [name] Secret Name.
  /// [value] Secret Value.
  Secret({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

