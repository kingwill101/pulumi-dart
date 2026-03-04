// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located..
  final pulumi.Input<String> availabilityZoneId;

  /// Creates a new [FirewallAvailabilityZoneMapping].
  /// [availabilityZoneId] The ID of the Availability Zone where the firewall endpoint is located..
  FirewallAvailabilityZoneMapping({required this.availabilityZoneId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityZoneId': availabilityZoneId};
  }

  factory FirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return FirewallAvailabilityZoneMapping(
      availabilityZoneId: pulumi.Input.fromValue(
        map['availabilityZoneId'] as String,
      ),
    );
  }
}
