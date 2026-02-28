// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationAwsOrg {
  /// The Amazon Resource Name (ARN) of the Amazon Web Services organization.
  final String arn;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAwsOrg].
  /// [arn] The Amazon Resource Name (ARN) of the Amazon Web Services organization.
  StorageLensConfigurationStorageLensConfigurationAwsOrg({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAwsOrg(
      arn: map['arn'] as String,
    );
  }
}
