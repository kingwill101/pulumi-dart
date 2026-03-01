// ignore_for_file: unused_element, unnecessary_cast

class DirectoryBucketLocation {
  /// [Availability Zone ID](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#az-ids) or Local Zone ID.
  final String name;

  /// Location type. Valid values: `AvailabilityZone`, `LocalZone`.
  final String? type;

  /// Creates a new [DirectoryBucketLocation].
  /// [name] [Availability Zone ID](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#az-ids) or Local Zone ID.
  /// [type] Location type. Valid values: `AvailabilityZone`, `LocalZone`.
  DirectoryBucketLocation({required this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': ?type};
  }

  factory DirectoryBucketLocation.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketLocation(
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
