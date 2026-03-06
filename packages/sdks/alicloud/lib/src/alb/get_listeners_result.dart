// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener.dart';

/// Result data returned by getListeners.
class GetListenersResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<String>? listenerIds;
  final String? listenerProtocol;
  final List<GetListenersListener> listeners;
  final List<String>? loadBalancerIds;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetListenersResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerIds] Optional.
  /// [listenerProtocol] Optional.
  /// [listeners] Required.
  /// [loadBalancerIds] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetListenersResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.listenerIds,
    this.listenerProtocol,
    required this.listeners,
    this.loadBalancerIds,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'listenerIds': ?listenerIds,
      'listenerProtocol': ?listenerProtocol,
      'listeners': pulumi.Input.encodeList<GetListenersListener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'loadBalancerIds': ?loadBalancerIds,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetListenersResult.fromMap(Map<String, dynamic> map) {
    return GetListenersResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerIds: (() { final guardedValue = map['listenerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      listenerProtocol: (() { final guardedValue = map['listenerProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listeners: pulumi.Input.decodeList<GetListenersListener>(map['listeners']!, (value) => GetListenersListener.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerIds: (() { final guardedValue = map['loadBalancerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

