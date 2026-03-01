// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action_patch.dart';
import 'httpget_action_patch.dart';
import 'sleep_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandlerPatch {
  /// Exec specifies a command to execute in the container.
  final ExecActionPatch? exec;
  /// HTTPGet specifies an HTTP GET request to perform.
  final HTTPGetActionPatch? httpGet;
  /// Sleep represents a duration that the container should sleep.
  final SleepActionPatch? sleep;
  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  final TCPSocketActionPatch? tcpSocket;

  /// Creates a new [LifecycleHandlerPatch].
  /// [exec] Exec specifies a command to execute in the container.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [sleep] Sleep represents a duration that the container should sleep.
  /// [tcpSocket] Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified.
  LifecycleHandlerPatch({
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

  factory LifecycleHandlerPatch.fromMap(Map<String, dynamic> map) {
    return LifecycleHandlerPatch(
      exec: map['exec'] == null ? null : ExecActionPatch.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : HTTPGetActionPatch.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      sleep: map['sleep'] == null ? null : SleepActionPatch.fromMap((map['sleep'] as Map).cast<String, dynamic>()),
      tcpSocket: map['tcpSocket'] == null ? null : TCPSocketActionPatch.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
    );
  }
}

