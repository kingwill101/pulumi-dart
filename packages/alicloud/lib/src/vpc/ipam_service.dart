import 'package:pulumi/pulumi.dart' as pulumi;

/// ## Import
///
/// Vpc Ipam Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipamService:IpamService example
/// ```
class IpamService extends pulumi.CustomResource {
  /// Whether the IPAM service has been activated.
  late final pulumi.Output<bool> enabled;

  /// Creates a new [IpamService].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  IpamService(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipamService:IpamService',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
  }
}
