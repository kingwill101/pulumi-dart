// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_get_listeners_get_listeners_args_doc}
/// Arguments for getListeners.
/// {@endtemplate}
/// {@macro pulumi_nlb_get_listeners_get_listeners_args_doc}
class GetListenersArgs {
  /// A list of Listener IDs.
  final pulumi.Input<List<String>>? ids;
  /// The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  final pulumi.Input<String>? listenerProtocol;
  /// The ID of the NLB instance. You can specify at most 20 IDs.
  final pulumi.Input<List<String>>? loadBalancerIds;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetListenersArgs].
  /// [ids] A list of Listener IDs.
  /// [listenerProtocol] The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  /// [loadBalancerIds] The ID of the NLB instance. You can specify at most 20 IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetListenersArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerProtocol,
    pulumi.Output<List<String>>? loadBalancerIds,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerProtocol = pulumi.Input.asOptionalInput<String>(listenerProtocol),
      loadBalancerIds = pulumi.Input.asOptionalInput<List<String>>(loadBalancerIds),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'listenerProtocol': ?listenerProtocol,
      'loadBalancerIds': ?loadBalancerIds,
      'outputFile': ?outputFile,
    };
  }

  factory GetListenersArgs.fromMap(Map<String, dynamic> map) {
    return GetListenersArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerProtocol: map['listenerProtocol'] == null ? null : pulumi.Output.create<String>(map['listenerProtocol'] as String),
      loadBalancerIds: map['loadBalancerIds'] == null ? null : pulumi.Output.create<List<String>>((map['loadBalancerIds'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

