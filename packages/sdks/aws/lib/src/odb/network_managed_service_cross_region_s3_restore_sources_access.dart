// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceCrossRegionS3RestoreSourcesAccess {
  /// List of IPv4 addresses for the Amazon STS access.
  final pulumi.Input<List<String>> ipv4Addresses;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String> status;

  /// Creates a new [NetworkManagedServiceCrossRegionS3RestoreSourcesAccess].
  /// [ipv4Addresses] List of IPv4 addresses for the Amazon STS access.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the Zero-ETL access.
  const NetworkManagedServiceCrossRegionS3RestoreSourcesAccess({
    required this.ipv4Addresses,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Addresses': ipv4Addresses,
      'region': region,
      'status': status,
    };
  }

  factory NetworkManagedServiceCrossRegionS3RestoreSourcesAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceCrossRegionS3RestoreSourcesAccess(
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
