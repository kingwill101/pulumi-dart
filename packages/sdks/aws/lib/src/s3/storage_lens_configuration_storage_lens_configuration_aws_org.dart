// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAwsOrg {
  /// The Amazon Resource Name (ARN) of the Amazon Web Services organization.
  final pulumi.Input<String> arn;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAwsOrg].
  /// [arn] The Amazon Resource Name (ARN) of the Amazon Web Services organization.
  StorageLensConfigurationStorageLensConfigurationAwsOrg({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAwsOrg(
      arn: (map['arn'] as String).input(),
    );
  }
}

