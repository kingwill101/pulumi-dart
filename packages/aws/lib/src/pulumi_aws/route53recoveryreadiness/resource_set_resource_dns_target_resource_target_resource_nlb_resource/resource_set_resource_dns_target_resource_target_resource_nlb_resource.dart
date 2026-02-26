// ignore_for_file: unused_element, unnecessary_cast

class ResourceSetResourceDnsTargetResourceTargetResourceNlbResource {
  /// NLB resource ARN.
  final String? arn;

  ResourceSetResourceDnsTargetResourceTargetResourceNlbResource({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    return map;
  }

  factory ResourceSetResourceDnsTargetResourceTargetResourceNlbResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResourceNlbResource(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
