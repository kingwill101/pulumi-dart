// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionLocation {
  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  final pulumi.Input<String> availabilityZone;
  /// AWS Region name.
  final pulumi.Input<String> regionName;

  /// Creates a new [DistributionLocation].
  /// [availabilityZone] Availability Zone. Follows the format us-east-2a (case-sensitive).
  /// [regionName] AWS Region name.
  DistributionLocation({
    required this.availabilityZone,
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'regionName': regionName,
    };
  }

  factory DistributionLocation.fromMap(Map<String, dynamic> map) {
    return DistributionLocation(
      availabilityZone: (map['availabilityZone'] as String).input(),
      regionName: (map['regionName'] as String).input(),
    );
  }
}

