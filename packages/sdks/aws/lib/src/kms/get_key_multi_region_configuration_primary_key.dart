// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyMultiRegionConfigurationPrimaryKey {
  /// The key ARN of a primary or replica key of a multi-Region key.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetKeyMultiRegionConfigurationPrimaryKey].
  /// [arn] The key ARN of a primary or replica key of a multi-Region key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetKeyMultiRegionConfigurationPrimaryKey({
    required this.arn,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': region};
  }

  factory GetKeyMultiRegionConfigurationPrimaryKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKeyMultiRegionConfigurationPrimaryKey(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
