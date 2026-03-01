// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ip_ranges_get_ip_ranges_args_doc}
/// Arguments for getIpRanges.
/// {@endtemplate}
/// {@macro pulumi_index_get_ip_ranges_get_ip_ranges_args_doc}
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

  /// Creates a new [GetIpRangesArgs].
  /// [id] Optional.
  /// [regions] Filter IP ranges by regions (or include all regions, if
  /// [services] Filter IP ranges by services. Valid items are `amazon`
  /// [url] Custom URL for source JSON file. Syntax must match [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html). Defaults to `https://ip-ranges.amazonaws.com/ip-ranges.json`.
  GetIpRangesArgs({
    String? id,
    List<String>? regions,
    required List<String> services,
    String? url,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      services = pulumi.Input.asInput<List<String>>(services),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'regions': ?regions,
      'services': services,
      'url': ?url,
    };
  }

  factory GetIpRangesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpRangesArgs(
      id: map['id'] == null ? null : map['id'] as String,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      services: (map['services'] as List).cast<String>(),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

