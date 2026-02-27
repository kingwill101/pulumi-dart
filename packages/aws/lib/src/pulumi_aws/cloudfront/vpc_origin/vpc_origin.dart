import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_origin_timeouts/vpc_origin_timeouts.dart';
import '../vpc_origin_vpc_origin_endpoint_config/vpc_origin_vpc_origin_endpoint_config.dart';
import 'vpc_origin_args.dart';

/// Creates an Amazon CloudFront VPC origin.
///
/// For information about CloudFront VPC origins, see
/// [Amazon CloudFront Developer Guide - Restrict access with VPC origins][1].
///
/// ## Example Usage
///
/// ### Application Load Balancer
///
/// The following example below creates a CloudFront VPC origin for a Application Load Balancer.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront VPC origins using the `id`. For example:
///
/// ```sh
/// % pulumi import aws_cloudfront_vpc_origin vo_JQEa410sssUFoY6wMkx69j
/// ```
class VpcOrigin extends pulumi.CustomResource {
  /// The VPC origin ARN.
  late final pulumi.Output<String> arn;

  /// The current version of the origin.
  late final pulumi.Output<String> etag;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcOriginTimeouts?> timeouts;

  /// The VPC origin endpoint configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<VpcOriginVpcOriginEndpointConfig>
      vpcOriginEndpointConfig;

  VpcOrigin(
    String name, {
    VpcOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/vpcOrigin:VpcOrigin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.etag = registerOutput<String>('etag');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcOriginTimeouts?>('timeouts');
    this.vpcOriginEndpointConfig =
        registerOutput<VpcOriginVpcOriginEndpointConfig>(
            'vpcOriginEndpointConfig');
  }
}
