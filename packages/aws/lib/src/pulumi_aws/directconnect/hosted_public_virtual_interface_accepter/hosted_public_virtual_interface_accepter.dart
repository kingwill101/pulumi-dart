import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_public_virtual_interface_accepter_args.dart';

/// Provides a resource to manage the accepter's side of a Direct Connect hosted public virtual interface.
/// This resource accepts ownership of a public virtual interface created by another AWS account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted public virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPublicVirtualInterfaceAccepter:HostedPublicVirtualInterfaceAccepter test dxvif-33cc44dd
/// ```
class HostedPublicVirtualInterfaceAccepter extends pulumi.CustomResource {
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the Direct Connect virtual interface to accept.
  late final pulumi.Output<String> virtualInterfaceId;

  HostedPublicVirtualInterfaceAccepter(
    String name, {
    HostedPublicVirtualInterfaceAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPublicVirtualInterfaceAccepter:HostedPublicVirtualInterfaceAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }
}
