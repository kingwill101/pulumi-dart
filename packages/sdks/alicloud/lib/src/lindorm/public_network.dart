import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_network_args.dart';
import 'public_network_state.dart';

/// ## Import
///
/// Lindorm Public Network can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:lindorm/publicNetwork:PublicNetwork example <id>
/// ```
class PublicNetwork extends pulumi.CustomResource {
  /// Open or close the public connection. Value:
  late final pulumi.Output<int?> enablePublicNetwork;
  /// Engine type, value:
  late final pulumi.Output<String> engineType;
  /// Instance ID
  late final pulumi.Output<String> instanceId;
  /// Instance status, returns:_EXPANDING`: Capacity-based cloud storage is being expanded._version_transing`: The minor version is being upgraded._CHANGING`: The specification is being upgraded or downgraded._SWITCHING`:SSL is being changed._OPENING`: The data subscription function is being activated._TRANSFER`: migrates data to the database._CREATING`: in the production disaster recovery instance._RECOVERING`: The backup is being restored._IMPORTING`: Data is being imported._MODIFYING`: The network is being changed._SWITCHING`: The internal network and the external network are being switched._CREATING`: creates a network link._DELETING`: deletes a network link.
  late final pulumi.Output<String> status;

  /// Creates a new [PublicNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicNetwork]. {@macro pulumi_lindorm_public_network_public_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicNetwork(
    String name, {
    PublicNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:lindorm/publicNetwork:PublicNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enablePublicNetwork = registerOutput<int?>('enablePublicNetwork');
    engineType = registerOutput<String>('engineType');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [PublicNetwork] resource's state with the given [name] and [id].
  static PublicNetwork get(
    String name,
    pulumi.Input<String> id, {
    PublicNetworkState? state,
  }) {
    return PublicNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:lindorm/publicNetwork:PublicNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enablePublicNetwork = registerOutput<int?>('enablePublicNetwork');
    engineType = registerOutput<String>('engineType');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }
}
