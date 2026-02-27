// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIpRanges.
class GetIpRangesArgs {
  final pulumi.Input<String>? id;

  /// Filter IP ranges by regions (or include all regions, if
  /// omitted). Valid items are `global` (for `cloudfront`) as well as all AWS regions
  /// (e.g., `eu-central-1`)
  final pulumi.Input<List<String>>? regions;

  /// Filter IP ranges by services. Valid items are `amazon`
  /// (for amazon.com), `amazon_connect`, `api_gateway`, `cloud9`, `cloudfront`,
  /// `codebuild`, `dynamodb`, `ec2`, `ec2_instance_connect`, `globalaccelerator`,
  /// `route53`, `route53_healthchecks`, `s3` and `workspaces_gateways`. See the
  /// [`service` attribute][2] documentation for other possible values.
  ///
  /// > **NOTE:** If the specified combination of regions and services does not yield any
  /// CIDR blocks, this call will fail.
  final pulumi.Input<List<String>> services;

  /// Custom URL for source JSON file. Syntax must match [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html). Defaults to `https://ip-ranges.amazonaws.com/ip-ranges.json`.
  final pulumi.Input<String>? url;

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
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      regions: pulumi.Input.asOptionalInput<List<String>>(map['regions']),
      services: pulumi.Input.asInput<List<String>>(map['services']),
      url: pulumi.Input.asOptionalInput<String>(map['url']),
    );
  }
}
