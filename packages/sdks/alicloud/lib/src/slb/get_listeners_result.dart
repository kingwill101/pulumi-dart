// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_slb_listener.dart';

/// Result data returned by getListeners.
class GetListenersResult {
  final String? descriptionRegex;
  /// Frontend port used to receive incoming traffic and distribute it to the backend servers.
  final int? frontendPort;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String loadBalancerId;
  final String? outputFile;
  /// Listener protocol. Possible values: `http`, `https`, `tcp` and `udp`.
  final String? protocol;
  /// A list of SLB listeners. Each element contains the following attributes:
  final List<GetListenersSlbListener> slbListeners;

  /// Creates a new [GetListenersResult].
  /// [descriptionRegex] Optional.
  /// [frontendPort] Frontend port used to receive incoming traffic and distribute it to the backend servers.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerId] Required.
  /// [outputFile] Optional.
  /// [protocol] Listener protocol. Possible values: `http`, `https`, `tcp` and `udp`.
  /// [slbListeners] A list of SLB listeners. Each element contains the following attributes:
  GetListenersResult({
    this.descriptionRegex,
    this.frontendPort,
    required this.id,
    required this.loadBalancerId,
    this.outputFile,
    this.protocol,
    required this.slbListeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'frontendPort': ?frontendPort,
      'id': id,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
      'protocol': ?protocol,
      'slbListeners': pulumi.Input.encodeList<GetListenersSlbListener, Map<String, dynamic>>(slbListeners, (value) => value.toMap()),
    };
  }

  factory GetListenersResult.fromMap(Map<String, dynamic> map) {
    return GetListenersResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex']! as String,
      frontendPort: map['frontendPort'] == null ? null : map['frontendPort']! as int,
      id: map['id'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      protocol: map['protocol'] == null ? null : map['protocol']! as String,
      slbListeners: pulumi.Input.decodeList<GetListenersSlbListener>(map['slbListeners'], (value) => GetListenersSlbListener.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

