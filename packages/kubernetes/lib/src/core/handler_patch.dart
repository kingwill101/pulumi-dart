// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action_patch.dart';
import 'httpget_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// Handler defines a specific action that should be taken
class HandlerPatch {
  /// One and only one of the following should be specified. Exec specifies the action to take.
  final ExecActionPatch? exec;
  /// HTTPGet specifies the http request to perform.
  final HTTPGetActionPatch? httpGet;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  final TCPSocketActionPatch? tcpSocket;

  /// Creates a new [HandlerPatch].
  /// [exec] One and only one of the following should be specified. Exec specifies the action to take.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  HandlerPatch({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
    };
  }

  factory HandlerPatch.fromMap(Map<String, dynamic> map) {
    return HandlerPatch(
      exec: map['exec'] == null ? null : ExecActionPatch.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : HTTPGetActionPatch.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      tcpSocket: map['tcpSocket'] == null ? null : TCPSocketActionPatch.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
    );
  }
}

