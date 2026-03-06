// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener.dart';

/// Result data returned by getListeners.
class GetListenersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  final String? listenerProtocol;
  /// A list of Nlb Listeners. Each element contains the following attributes:
  final List<GetListenersListener> listeners;
  final List<String>? loadBalancerIds;
  final String? outputFile;

  /// Creates a new [GetListenersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerProtocol] The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  /// [listeners] A list of Nlb Listeners. Each element contains the following attributes:
  /// [loadBalancerIds] Optional.
  /// [outputFile] Optional.
  const GetListenersResult({
    required this.id,
    required this.ids,
    this.listenerProtocol,
    required this.listeners,
    this.loadBalancerIds,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'listenerProtocol': ?listenerProtocol,
      'listeners': pulumi.Input.encodeList<GetListenersListener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'loadBalancerIds': ?loadBalancerIds,
      'outputFile': ?outputFile,
    };
  }

  factory GetListenersResult.fromMap(Map<String, dynamic> map) {
    return GetListenersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerProtocol: (() { final guardedValue = map['listenerProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listeners: pulumi.Input.decodeList<GetListenersListener>(map['listeners']!, (value) => GetListenersListener.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerIds: (() { final guardedValue = map['loadBalancerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

