// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_request_port.dart';

class JitNetworkAccessRequestVirtualMachine {
  /// Resource ID of the virtual machine that is linked to this policy
  final String id;
  /// The ports that were opened for the virtual machine
  final List<JitNetworkAccessRequestPort> ports;

  /// Creates a new [JitNetworkAccessRequestVirtualMachine].
  /// [id] Resource ID of the virtual machine that is linked to this policy
  /// [ports] The ports that were opened for the virtual machine
  JitNetworkAccessRequestVirtualMachine({
    required this.id,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ports': pulumi.Input.encodeList<JitNetworkAccessRequestPort, Map<String, dynamic>>(ports, (value) => value.toMap()),
    };
  }

  factory JitNetworkAccessRequestVirtualMachine.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequestVirtualMachine(
      id: map['id'] as String,
      ports: pulumi.Input.decodeList<JitNetworkAccessRequestPort>(map['ports'], (value) => JitNetworkAccessRequestPort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

