// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Database Fleet properties.
class FleetProperties {
  /// Fleet description.
  final pulumi.Input<String>? description;

  /// Creates a new [FleetProperties].
  /// [description] Fleet description.
  FleetProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory FleetProperties.fromMap(Map<String, dynamic> map) {
    return FleetProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

