// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentEndpoint {
  /// ID of an endpoint you want to assign.
  final String id;

  /// To route traffic to an Amazon S3 bucket that is configured as a website endpoint, specify the region in which you created the bucket for `region`.
  final String? region;

  /// Type of the endpoint. Valid values are `value`, `cloudfront`, `elastic-load-balancer`, `s3-website`, `application-load-balancer`, `network-load-balancer` and `elastic-beanstalk`
  final String? type;

  /// Value of the `type`.
  final String? value;

  GetTrafficPolicyDocumentEndpoint({
    required this.id,
    this.region,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentEndpoint.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentEndpoint(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
