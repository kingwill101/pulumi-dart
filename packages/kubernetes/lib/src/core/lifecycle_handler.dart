// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action.dart';
import 'httpget_action.dart';
import 'sleep_action.dart';
import 'tcpsocket_action.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandler {
  /// Exec specifies a command to execute in the container.
  final ExecAction? exec;
  /// HTTPGet specifies an HTTP GET request to perform.
  final HTTPGetAction? httpGet;
  /// Sleep represents a duration that the container should sleep.
  final SleepAction? sleep;
  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  final TCPSocketAction? tcpSocket;

  /// Creates a new [LifecycleHandler].
  /// [exec] Exec specifies a command to execute in the container.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [sleep] Sleep represents a duration that the container should sleep.
  /// [tcpSocket] Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  LifecycleHandler({
    this.exec,
    this.httpGet,
    this.sleep,
    this.tcpSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'sleep': ?sleep == null ? null : sleep!.toMap(),
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
    };
  }

  factory LifecycleHandler.fromMap(Map<String, dynamic> map) {
    return LifecycleHandler(
      exec: map['exec'] == null ? null : ExecAction.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : HTTPGetAction.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      sleep: map['sleep'] == null ? null : SleepAction.fromMap((map['sleep'] as Map).cast<String, dynamic>()),
      tcpSocket: map['tcpSocket'] == null ? null : TCPSocketAction.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
    );
  }
}

