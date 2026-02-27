import 'package:pulumi/pulumi.dart';
import '../connection_group_timeouts/connection_group_timeouts.dart';
import 'connection_group_args.dart';

/// Creates an Amazon CloudFront Connection Group.
///
/// For information about CloudFront Connection Groups, see the [AWS CloudFormation Documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Connection Groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/connectionGroup:ConnectionGroup example CGROUP123EXAMPLE
/// ```
///
/// [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html
class ConnectionGroup extends CustomResource {
  /// ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  late final Output<String?> anycastIpListId;

  /// ARN of the connection group.
  late final Output<String> arn;

  /// Whether the connection group is enabled. Default is `true`.
  late final Output<bool> enabled;

  /// Current version of the connection group.
  late final Output<String> etag;

  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  late final Output<bool> ipv6Enabled;

  /// Whether the connection group is the default connection group for the distribution tenants.
  late final Output<bool> isDefault;

  /// Date and time when the connection group was last modified.
  late final Output<String> lastModifiedTime;

  /// Name of the connection group.
  late final Output<String> name;

  /// The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  late final Output<String> routingEndpoint;

  /// Current status of the connection group.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ConnectionGroupTimeouts?> timeouts;
  late final Output<bool> waitForDeployment;

  ConnectionGroup(
    String name, {
    ConnectionGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/connectionGroup:ConnectionGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.anycastIpListId = registerOutput<String?>('anycastIpListId');
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.ipv6Enabled = registerOutput<bool>('ipv6Enabled');
    this.isDefault = registerOutput<bool>('isDefault');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.routingEndpoint = registerOutput<String>('routingEndpoint');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionGroupTimeouts?>('timeouts');
    this.waitForDeployment = registerOutput<bool>('waitForDeployment');
  }
}
