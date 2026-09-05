// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAwsOrg {
  /// ARN of the Amazon Web Services organization.
  final pulumi.Input<String> arn;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAwsOrg].
  /// [arn] ARN of the Amazon Web Services organization.
  const StorageLensConfigurationStorageLensConfigurationAwsOrg({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAwsOrg(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
