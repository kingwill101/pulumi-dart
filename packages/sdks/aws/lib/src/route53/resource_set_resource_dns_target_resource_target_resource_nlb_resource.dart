// ignore_for_file: unused_element, unnecessary_cast


class ResourceSetResourceDnsTargetResourceTargetResourceNlbResource {
  /// NLB resource ARN.
  final String? arn;

  /// Creates a new [ResourceSetResourceDnsTargetResourceTargetResourceNlbResource].
  /// [arn] NLB resource ARN.
  ResourceSetResourceDnsTargetResourceTargetResourceNlbResource({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory ResourceSetResourceDnsTargetResourceTargetResourceNlbResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResourceNlbResource(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}

