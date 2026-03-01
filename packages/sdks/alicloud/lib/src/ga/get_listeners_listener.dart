// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_certificate.dart';
import 'get_listeners_listener_port_range.dart';

class GetListenersListener {
  /// The certificates of the listener.
  final List<GetListenersListenerCertificate> certificates;
  /// The clientAffinity of the listener.
  final String clientAffinity;
  /// The description of the listener.
  final String description;
  /// The ID of the Listener.
  final String id;
  /// The listenerId of the listener.
  final String listenerId;
  /// The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  final String name;
  /// The portRanges of the listener.
  final List<GetListenersListenerPortRange> portRanges;
  /// Type of network transport protocol monitored.
  final String protocol;
  /// The status of the listener. Valid values: `active`, `configuring`, `creating`.
  final String status;

  /// Creates a new [GetListenersListener].
  /// [certificates] The certificates of the listener.
  /// [clientAffinity] The clientAffinity of the listener.
  /// [description] The description of the listener.
  /// [id] The ID of the Listener.
  /// [listenerId] The listenerId of the listener.
  /// [name] The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  /// [portRanges] The portRanges of the listener.
  /// [protocol] Type of network transport protocol monitored.
  /// [status] The status of the listener. Valid values: `active`, `configuring`, `creating`.
  GetListenersListener({
    required this.certificates,
    required this.clientAffinity,
    required this.description,
    required this.id,
    required this.listenerId,
    required this.name,
    required this.portRanges,
    required this.protocol,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetListenersListenerCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'clientAffinity': clientAffinity,
      'description': description,
      'id': id,
      'listenerId': listenerId,
      'name': name,
      'portRanges': pulumi.Input.encodeList<GetListenersListenerPortRange, Map<String, dynamic>>(portRanges, (value) => value.toMap()),
      'protocol': protocol,
      'status': status,
    };
  }

  factory GetListenersListener.fromMap(Map<String, dynamic> map) {
    return GetListenersListener(
      certificates: pulumi.Input.decodeList<GetListenersListenerCertificate>(map['certificates'], (value) => GetListenersListenerCertificate.fromMap((value as Map).cast<String, dynamic>())),
      clientAffinity: map['clientAffinity'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      name: map['name'] as String,
      portRanges: pulumi.Input.decodeList<GetListenersListenerPortRange>(map['portRanges'], (value) => GetListenersListenerPortRange.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      status: map['status'] as String,
    );
  }
}

