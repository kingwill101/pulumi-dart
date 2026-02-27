import 'package:pulumi/pulumi.dart';
import 'ip_set_args3.dart';

/// Provides a WAFv2 IP Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 IP Sets using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class IpSet3 extends CustomResource {
  /// Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  late final Output<List<String>?> addresses;

  /// The Amazon Resource Name (ARN) of the IP set.
  late final Output<String> arn;

  /// A friendly description of the IP set.
  late final Output<String?> description;

  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  late final Output<String> ipAddressVersion;
  late final Output<String> lockToken;

  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  late final Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  IpSet3(
    String name, {
    IpSetArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ipSet:IpSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<List<String>?>('addresses');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.ipAddressVersion = registerOutput<String>('ipAddressVersion');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
