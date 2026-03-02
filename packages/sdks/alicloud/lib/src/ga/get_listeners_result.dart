// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener.dart';

/// Result data returned by getListeners.
class GetListenersResult {
  final String acceleratorId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Ga Listeners. Each element contains the following attributes:
  final List<GetListenersListener> listeners;
  final String? nameRegex;
  /// A list of Listener names.
  final List<String> names;
  final String? outputFile;
  /// The status of the listener.
  final String? status;

  /// Creates a new [GetListenersResult].
  /// [acceleratorId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listeners] A list of Ga Listeners. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Listener names.
  /// [outputFile] Optional.
  /// [status] The status of the listener.
  GetListenersResult({
    required this.acceleratorId,
    required this.id,
    required this.ids,
    required this.listeners,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'id': id,
      'ids': ids,
      'listeners': pulumi.Input.encodeList<GetListenersListener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetListenersResult.fromMap(Map<String, dynamic> map) {
    return GetListenersResult(
      acceleratorId: map['acceleratorId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listeners: pulumi.Input.decodeList<GetListenersListener>(map['listeners'], (value) => GetListenersListener.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

