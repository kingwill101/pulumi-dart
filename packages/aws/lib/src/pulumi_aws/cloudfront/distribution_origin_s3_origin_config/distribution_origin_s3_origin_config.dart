// ignore_for_file: unused_element, unnecessary_cast

class DistributionOriginS3OriginConfig {
  /// The CloudFront origin access identity to associate with the origin.
  final String originAccessIdentity;

  DistributionOriginS3OriginConfig({
    required this.originAccessIdentity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['originAccessIdentity'] = originAccessIdentity;
    return map;
  }

  factory DistributionOriginS3OriginConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOriginS3OriginConfig(
      originAccessIdentity: map['originAccessIdentity'] as String,
    );
  }
}
