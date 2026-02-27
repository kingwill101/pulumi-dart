import 'package:pulumi/pulumi.dart';
import '../network_interface_permission_timeouts/network_interface_permission_timeouts.dart';
import 'network_interface_permission_args.dart';

/// Grant cross-account access to an Elastic network interface (ENI).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Interface Permissions using the `network_interface_permission_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterfacePermission:NetworkInterfacePermission example eni-perm-056ad97ce2ac377ed
/// ```
class NetworkInterfacePermission extends CustomResource {
  /// The Amazon Web Services account ID.
  late final Output<String> awsAccountId;

  /// The ID of the network interface.
  late final Output<String> networkInterfaceId;

  /// ENI permission ID.
  late final Output<String> networkInterfacePermissionId;

  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  late final Output<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<NetworkInterfacePermissionTimeouts?> timeouts;

  NetworkInterfacePermission(
    String name, {
    NetworkInterfacePermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterfacePermission:NetworkInterfacePermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.networkInterfacePermissionId =
        registerOutput<String>('networkInterfacePermissionId');
    this.permission = registerOutput<String>('permission');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<NetworkInterfacePermissionTimeouts?>('timeouts');
  }
}
