// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginS3OriginConfig {
  /// The CloudFront origin access identity to associate with the origin.
  final pulumi.Input<String> originAccessIdentity;

  /// Creates a new [DistributionOriginS3OriginConfig].
  /// [originAccessIdentity] The CloudFront origin access identity to associate with the origin.
  DistributionOriginS3OriginConfig({required this.originAccessIdentity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'originAccessIdentity': originAccessIdentity};
  }

  factory DistributionOriginS3OriginConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOriginS3OriginConfig(
      originAccessIdentity: pulumi.Input.fromValue(
        map['originAccessIdentity'] as String,
      ),
    );
  }
}
