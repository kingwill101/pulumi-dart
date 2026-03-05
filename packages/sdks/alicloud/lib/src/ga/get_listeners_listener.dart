// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_certificate.dart';
import 'get_listeners_listener_port_range.dart';

class GetListenersListener {
  /// The certificates of the listener.
  final pulumi.Input<List<GetListenersListenerCertificate>> certificates;
  /// The clientAffinity of the listener.
  final pulumi.Input<String> clientAffinity;
  /// The description of the listener.
  final pulumi.Input<String> description;
  /// The ID of the Listener.
  final pulumi.Input<String> id;
  /// The listenerId of the listener.
  final pulumi.Input<String> listenerId;
  /// The name of the listener. The length of the name is 2-128 characters. It starts with uppercase and lowercase letters or Chinese characters. It can contain numbers and underscores and dashes.
  final pulumi.Input<String> name;
  /// The portRanges of the listener.
  final pulumi.Input<List<GetListenersListenerPortRange>> portRanges;
  /// Type of network transport protocol monitored.
  final pulumi.Input<String> protocol;
  /// The status of the listener. Valid values: `active`, `configuring`, `creating`.
  final pulumi.Input<String> status;

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
      'certificates': pulumi.Input.mapInputValue<List<GetListenersListenerCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetListenersListenerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientAffinity': clientAffinity,
      'description': description,
      'id': id,
      'listenerId': listenerId,
      'name': name,
      'portRanges': pulumi.Input.mapInputValue<List<GetListenersListenerPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetListenersListenerPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': protocol,
      'status': status,
    };
  }

  factory GetListenersListener.fromMap(Map<String, dynamic> map) {
    return GetListenersListener(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerCertificate>(map['certificates']!, (value) => GetListenersListenerCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      clientAffinity: pulumi.Input.fromValue(map['clientAffinity'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      portRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerPortRange>(map['portRanges']!, (value) => GetListenersListenerPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

