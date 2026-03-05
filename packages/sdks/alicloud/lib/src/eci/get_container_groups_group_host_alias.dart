// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupHostAlias {
  /// The name of the host.
  final pulumi.Input<List<String>> hostnames;
  /// The IP address of the container.
  final pulumi.Input<String> ip;

  /// Creates a new [GetContainerGroupsGroupHostAlias].
  /// [hostnames] The name of the host.
  /// [ip] The IP address of the container.
  GetContainerGroupsGroupHostAlias({
    required this.hostnames,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
      'ip': ip,
    };
  }

  factory GetContainerGroupsGroupHostAlias.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupHostAlias(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}

