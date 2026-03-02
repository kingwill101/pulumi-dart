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
  GetListenersResult({
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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerIds: map['listenerIds'] == null ? null : (map['listenerIds']! as List).cast<String>(),
      listenerProtocol: map['listenerProtocol'] == null ? null : map['listenerProtocol']! as String,
      listeners: pulumi.Input.decodeList<GetListenersListener>(map['listeners'], (value) => GetListenersListener.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerIds: map['loadBalancerIds'] == null ? null : (map['loadBalancerIds']! as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

