// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AvailabilityZone
class AvailabilityZone {
  /// &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
  final pulumi.Input<String>? name;

  /// Creates a new [AvailabilityZone].
  /// [name] &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
  AvailabilityZone({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory AvailabilityZone.fromMap(Map<String, dynamic> map) {
    return AvailabilityZone(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
