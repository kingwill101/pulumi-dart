// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_listeners_get_listeners_args_doc}
/// Arguments for getListeners.
/// {@endtemplate}
/// {@macro pulumi_alb_get_listeners_get_listeners_args_doc}
class GetListenersArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Listener IDs.
  final pulumi.Input<List<String>>? ids;
  /// The listener ids.
  final pulumi.Input<List<String>>? listenerIds;
  /// Snooping Protocols. Valid Values: `HTTP`, `HTTPS` Or `QUIC`.
  final pulumi.Input<String>? listenerProtocol;
  /// The load balancer ids.
  final pulumi.Input<List<String>>? loadBalancerIds;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The state of the listener. Valid Values: `Running` Or `Stopped`. `Running`: The listener is running. `Stopped`: The listener is stopped.
  final pulumi.Input<String>? status;

  /// Creates a new [GetListenersArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Listener IDs.
  /// [listenerIds] The listener ids.
  /// [listenerProtocol] Snooping Protocols. Valid Values: `HTTP`, `HTTPS` Or `QUIC`.
  /// [loadBalancerIds] The load balancer ids.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The state of the listener. Valid Values: `Running` Or `Stopped`. `Running`: The listener is running. `Stopped`: The listener is stopped.
  GetListenersArgs({
    bool? enableDetails,
    List<String>? ids,
    List<String>? listenerIds,
    String? listenerProtocol,
    List<String>? loadBalancerIds,
    String? outputFile,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerIds = pulumi.Input.asOptionalInput<List<String>>(listenerIds),
      listenerProtocol = pulumi.Input.asOptionalInput<String>(listenerProtocol),
      loadBalancerIds = pulumi.Input.asOptionalInput<List<String>>(loadBalancerIds),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'listenerIds': ?listenerIds,
      'listenerProtocol': ?listenerProtocol,
      'loadBalancerIds': ?loadBalancerIds,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetListenersArgs.fromMap(Map<String, dynamic> map) {
    return GetListenersArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      listenerIds: map['listenerIds'] == null ? null : (map['listenerIds'] as List).cast<String>(),
      listenerProtocol: map['listenerProtocol'] == null ? null : map['listenerProtocol'] as String,
      loadBalancerIds: map['loadBalancerIds'] == null ? null : (map['loadBalancerIds'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

