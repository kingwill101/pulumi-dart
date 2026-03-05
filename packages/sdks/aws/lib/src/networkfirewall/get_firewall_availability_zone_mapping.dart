// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallAvailabilityZoneMapping {
  /// The ID of the Availability Zone where the firewall endpoint is located.
  final pulumi.Input<String> availabilityZoneId;

  /// Creates a new [GetFirewallAvailabilityZoneMapping].
  /// [availabilityZoneId] The ID of the Availability Zone where the firewall endpoint is located.
  GetFirewallAvailabilityZoneMapping({
    required this.availabilityZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
    };
  }

  factory GetFirewallAvailabilityZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetFirewallAvailabilityZoneMapping(
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
    );
  }
}

