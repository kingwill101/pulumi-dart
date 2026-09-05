// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryBucketLocation {
  /// [Availability Zone ID](https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-availability-zones.html) or Local Zone ID.
  final pulumi.Input<String> name;
  /// Location type. Valid values: `AvailabilityZone`, `LocalZone`.
  final pulumi.Input<String?>? type;

  /// Creates a new [DirectoryBucketLocation].
  /// [name] [Availability Zone ID](https://docs.aws.amazon.com/global-infrastructure/latest/regions/aws-availability-zones.html) or Local Zone ID.
  /// [type] Location type. Valid values: `AvailabilityZone`, `LocalZone`.
  const DirectoryBucketLocation({
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
    };
  }

  factory DirectoryBucketLocation.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketLocation(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
