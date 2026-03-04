// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupContainerPort {
  /// The port number. Valid values: 1 to 65535.
  final pulumi.Input<int> port;

  /// Valid values: `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [GetContainerGroupsGroupContainerPort].
  /// [port] The port number. Valid values: 1 to 65535.
  /// [protocol] Valid values: `TCP` and `UDP`.
  GetContainerGroupsGroupContainerPort({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'protocol': protocol};
  }

  factory GetContainerGroupsGroupContainerPort.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerGroupsGroupContainerPort(
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
