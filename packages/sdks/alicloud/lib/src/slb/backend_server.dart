import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_server_args.dart';
import 'backend_server_state.dart';

/// Add a group of backend servers (ECS or ENI instance) to the Server Load Balancer or remove them from it.
///
/// &gt; **NOTE:** Available in 1.53.0+
///
/// ## Import
///
/// Load balancer backend server can be imported using the load balancer id.
///
/// ```sh
/// $ pulumi import alicloud:slb/backendServer:BackendServer example <load_balancer_id>
/// ```
class BackendServer extends pulumi.CustomResource {
  /// A list of instances to added backend server in the SLB. It contains three sub-fields as `Block server` follows.
  late final pulumi.Output<List<Map<String, dynamic>>?> backendServers;
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// ID of the load balancer.
  late final pulumi.Output<String> loadBalancerId;

  /// Creates a new [BackendServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendServer]. {@macro pulumi_slb_backend_server_backend_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendServer(
    String name, {
    BackendServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/backendServer:BackendServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendServers = registerOutput<List<Map<String, dynamic>>?>('backendServers');
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    loadBalancerId = registerOutput<String>('loadBalancerId');
  }

  /// Gets an existing [BackendServer] resource's state with the given [name] and [id].
  static BackendServer get(
    String name,
    pulumi.Input<String> id, {
    BackendServerState? state,
  }) {
    return BackendServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/backendServer:BackendServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendServers = registerOutput<List<Map<String, dynamic>>?>('backendServers');
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    loadBalancerId = registerOutput<String>('loadBalancerId');
  }
}
