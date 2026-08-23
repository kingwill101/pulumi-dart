// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentEndpoint {
  /// ID of an endpoint you want to assign.
  final pulumi.Input<String> id;
  /// To route traffic to an Amazon S3 bucket that is configured as a website endpoint, specify the region in which you created the bucket for `region`.
  final pulumi.Input<String>? region;
  /// Type of the endpoint. Valid values are `value`, `cloudfront`, `elastic-load-balancer`, `s3-website`, `application-load-balancer`, `network-load-balancer` and `elastic-beanstalk`
  final pulumi.Input<String>? type;
  /// Value of the `type`.
  final pulumi.Input<String>? value;

  /// Creates a new [GetTrafficPolicyDocumentEndpoint].
  /// [id] ID of an endpoint you want to assign.
  /// [region] To route traffic to an Amazon S3 bucket that is configured as a website endpoint, specify the region in which you created the bucket for `region`.
  /// [type] Type of the endpoint. Valid values are `value`, `cloudfront`, `elastic-load-balancer`, `s3-website`, `application-load-balancer`, `network-load-balancer` and `elastic-beanstalk`
  /// [value] Value of the `type`.
  const GetTrafficPolicyDocumentEndpoint({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
