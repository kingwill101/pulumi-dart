// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentEndpoint {
  /// ID of an endpoint you want to assign.
  final String id;

  /// To route traffic to an Amazon S3 bucket that is configured as a website endpoint, specify the region in which you created the bucket for <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>.
  final String? region;

  /// Type of the endpoint. Valid values are <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span>, <span pulumi-lang-nodejs="`cloudfront`" pulumi-lang-dotnet="`Cloudfront`" pulumi-lang-go="`cloudfront`" pulumi-lang-python="`cloudfront`" pulumi-lang-yaml="`cloudfront`" pulumi-lang-java="`cloudfront`">`cloudfront`</span>, `elastic-load-balancer`, `s3-website`, `application-load-balancer`, `network-load-balancer` and `elastic-beanstalk`
  final String? type;

  /// Value of the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>.
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
