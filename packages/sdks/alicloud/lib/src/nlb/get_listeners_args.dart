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
  const GetListenersArgs({
    this.ids,
    this.listenerProtocol,
    this.loadBalancerIds,
    this.outputFile,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listenerProtocol: (() { final guardedValue = map['listenerProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerIds: (() { final guardedValue = map['loadBalancerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

