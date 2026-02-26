// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIpRanges.
class GetIpRangesArgs {
  final Input<String>? id;

  /// Filter IP ranges by regions (or include all regions, if
  /// omitted). Valid items are <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span> (for <span pulumi-lang-nodejs="`cloudfront`" pulumi-lang-dotnet="`Cloudfront`" pulumi-lang-go="`cloudfront`" pulumi-lang-python="`cloudfront`" pulumi-lang-yaml="`cloudfront`" pulumi-lang-java="`cloudfront`">`cloudfront`</span>) as well as all AWS regions
  /// (e.g., `eu-central-1`)
  final Input<List<String>>? regions;

  /// Filter IP ranges by services. Valid items are <span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>
  /// (for amazon.com), <span pulumi-lang-nodejs="`amazonConnect`" pulumi-lang-dotnet="`AmazonConnect`" pulumi-lang-go="`amazonConnect`" pulumi-lang-python="`amazon_connect`" pulumi-lang-yaml="`amazonConnect`" pulumi-lang-java="`amazonConnect`">`amazon_connect`</span>, <span pulumi-lang-nodejs="`apiGateway`" pulumi-lang-dotnet="`ApiGateway`" pulumi-lang-go="`apiGateway`" pulumi-lang-python="`api_gateway`" pulumi-lang-yaml="`apiGateway`" pulumi-lang-java="`apiGateway`">`api_gateway`</span>, <span pulumi-lang-nodejs="`cloud9`" pulumi-lang-dotnet="`Cloud9`" pulumi-lang-go="`cloud9`" pulumi-lang-python="`cloud9`" pulumi-lang-yaml="`cloud9`" pulumi-lang-java="`cloud9`">`cloud9`</span>, <span pulumi-lang-nodejs="`cloudfront`" pulumi-lang-dotnet="`Cloudfront`" pulumi-lang-go="`cloudfront`" pulumi-lang-python="`cloudfront`" pulumi-lang-yaml="`cloudfront`" pulumi-lang-java="`cloudfront`">`cloudfront`</span>,
  /// <span pulumi-lang-nodejs="`codebuild`" pulumi-lang-dotnet="`Codebuild`" pulumi-lang-go="`codebuild`" pulumi-lang-python="`codebuild`" pulumi-lang-yaml="`codebuild`" pulumi-lang-java="`codebuild`">`codebuild`</span>, <span pulumi-lang-nodejs="`dynamodb`" pulumi-lang-dotnet="`Dynamodb`" pulumi-lang-go="`dynamodb`" pulumi-lang-python="`dynamodb`" pulumi-lang-yaml="`dynamodb`" pulumi-lang-java="`dynamodb`">`dynamodb`</span>, <span pulumi-lang-nodejs="`ec2`" pulumi-lang-dotnet="`Ec2`" pulumi-lang-go="`ec2`" pulumi-lang-python="`ec2`" pulumi-lang-yaml="`ec2`" pulumi-lang-java="`ec2`">`ec2`</span>, <span pulumi-lang-nodejs="`ec2InstanceConnect`" pulumi-lang-dotnet="`Ec2InstanceConnect`" pulumi-lang-go="`ec2InstanceConnect`" pulumi-lang-python="`ec2_instance_connect`" pulumi-lang-yaml="`ec2InstanceConnect`" pulumi-lang-java="`ec2InstanceConnect`">`ec2_instance_connect`</span>, <span pulumi-lang-nodejs="`globalaccelerator`" pulumi-lang-dotnet="`Globalaccelerator`" pulumi-lang-go="`globalaccelerator`" pulumi-lang-python="`globalaccelerator`" pulumi-lang-yaml="`globalaccelerator`" pulumi-lang-java="`globalaccelerator`">`globalaccelerator`</span>,
  /// <span pulumi-lang-nodejs="`route53`" pulumi-lang-dotnet="`Route53`" pulumi-lang-go="`route53`" pulumi-lang-python="`route53`" pulumi-lang-yaml="`route53`" pulumi-lang-java="`route53`">`route53`</span>, <span pulumi-lang-nodejs="`route53Healthchecks`" pulumi-lang-dotnet="`Route53Healthchecks`" pulumi-lang-go="`route53Healthchecks`" pulumi-lang-python="`route53_healthchecks`" pulumi-lang-yaml="`route53Healthchecks`" pulumi-lang-java="`route53Healthchecks`">`route53_healthchecks`</span>, <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> and <span pulumi-lang-nodejs="`workspacesGateways`" pulumi-lang-dotnet="`WorkspacesGateways`" pulumi-lang-go="`workspacesGateways`" pulumi-lang-python="`workspaces_gateways`" pulumi-lang-yaml="`workspacesGateways`" pulumi-lang-java="`workspacesGateways`">`workspaces_gateways`</span>. See the
  /// [<span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> attribute][2] documentation for other possible values.
  ///
  /// > **NOTE:** If the specified combination of regions and services does not yield any
  /// CIDR blocks, this call will fail.
  final Input<List<String>> services;

  /// Custom URL for source JSON file. Syntax must match [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html). Defaults to `https://ip-ranges.amazonaws.com/ip-ranges.json`.
  final Input<String>? url;

  GetIpRangesArgs({
    this.id,
    this.regions,
    required this.services,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    map['services'] = services;
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GetIpRangesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpRangesArgs(
      id: Input.asOptionalInput<String>(map['id']),
      regions: Input.asOptionalInput<List<String>>(map['regions']),
      services: Input.asInput<List<String>>(map['services']),
      url: Input.asOptionalInput<String>(map['url']),
    );
  }
}
