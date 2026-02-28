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

  /// Creates a new [GetTrafficPolicyDocumentEndpoint].
  /// [id] ID of an endpoint you want to assign.
  /// [region] To route traffic to an Amazon S3 bucket that is configured as a website endpoint, specify the region in which you created the bucket for `region`.
  /// [type] Type of the endpoint. Valid values are `value`, `cloudfront`, `elastic-load-balancer`, `s3-website`, `application-load-balancer`, `network-load-balancer` and `elastic-beanstalk`
  /// [value] Value of the `type`.
  GetTrafficPolicyDocumentEndpoint({
    required this.id,
    this.region,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'type': ?type,
      'value': ?value,
    };
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

