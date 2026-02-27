import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_transit_virtual_interface_acceptor_args.dart';

/// Provides a resource to manage the accepter's side of a Direct Connect hosted transit virtual interface.
/// This resource accepts ownership of a transit virtual interface created by another AWS account.
///
/// > **NOTE:** AWS allows a Direct Connect hosted transit virtual interface to be deleted from either the allocator's or accepter's side. However, this provider only allows the Direct Connect hosted transit virtual interface to be deleted from the allocator's side by removing the corresponding `aws.directconnect.HostedTransitVirtualInterface` resource from your configuration. Removing a `aws.directconnect.HostedTransitVirtualInterfaceAcceptor` resource from your configuration will remove it from your statefile and management, **but will not delete the Direct Connect virtual interface.**
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted transit virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedTransitVirtualInterfaceAcceptor:HostedTransitVirtualInterfaceAcceptor test dxvif-33cc44dd
/// ```
class HostedTransitVirtualInterfaceAcceptor extends pulumi.CustomResource {
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final pulumi.Output<String> dxGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the Direct Connect virtual interface to accept.
  late final pulumi.Output<String> virtualInterfaceId;

  HostedTransitVirtualInterfaceAcceptor(
    String name, {
    HostedTransitVirtualInterfaceAcceptorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedTransitVirtualInterfaceAcceptor:HostedTransitVirtualInterfaceAcceptor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }
}
