// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AvailabilityZone
class AvailabilityZone {
  /// <p>The name of the Availability Zone.</p>
  final pulumi.Input<String>? name;

  /// Creates a new [AvailabilityZone].
  /// [name] <p>The name of the Availability Zone.</p>
  AvailabilityZone({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AvailabilityZone.fromMap(Map<String, dynamic> map) {
    return AvailabilityZone(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

