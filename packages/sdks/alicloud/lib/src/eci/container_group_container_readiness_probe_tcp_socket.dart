// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerReadinessProbeTcpSocket {
  final pulumi.Input<int>? port;

  /// Creates a new [ContainerGroupContainerReadinessProbeTcpSocket].
  /// [port] Optional.
  ContainerGroupContainerReadinessProbeTcpSocket({this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port};
  }

  factory ContainerGroupContainerReadinessProbeTcpSocket.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerGroupContainerReadinessProbeTcpSocket(
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
