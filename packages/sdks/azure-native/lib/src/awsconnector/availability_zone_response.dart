// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AvailabilityZone
class AvailabilityZoneResponse {
  /// &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
  final pulumi.Input<String>? name;

  /// Creates a new [AvailabilityZoneResponse].
  /// [name] &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
  AvailabilityZoneResponse({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory AvailabilityZoneResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityZoneResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
