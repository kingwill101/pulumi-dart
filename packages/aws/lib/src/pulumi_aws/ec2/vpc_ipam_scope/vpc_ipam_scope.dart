import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_scope_args.dart';

/// Creates a scope for AWS IPAM.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the `scope_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamScope:VpcIpamScope example ipam-scope-0513c69f283d11dfb
/// ```
class VpcIpamScope extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the scope.
  late final pulumi.Output<String> arn;

  /// A description for the scope you're creating.
  late final pulumi.Output<String?> description;

  /// The ARN of the IPAM for which you're creating this scope.
  late final pulumi.Output<String> ipamArn;

  /// The ID of the IPAM for which you're creating this scope.
  late final pulumi.Output<String> ipamId;
  late final pulumi.Output<String> ipamScopeType;

  /// Defines if the scope is the default scope or not.
  late final pulumi.Output<bool> isDefault;

  /// The number of pools in the scope.
  late final pulumi.Output<int> poolCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  VpcIpamScope(
    String name, {
    VpcIpamScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamScope:VpcIpamScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.ipamArn = registerOutput<String>('ipamArn');
    this.ipamId = registerOutput<String>('ipamId');
    this.ipamScopeType = registerOutput<String>('ipamScopeType');
    this.isDefault = registerOutput<bool>('isDefault');
    this.poolCount = registerOutput<int>('poolCount');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
