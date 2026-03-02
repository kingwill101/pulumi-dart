// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupHostAlias {
  /// The information about the host.
  final pulumi.Input<List<String>>? hostnames;
  /// The IP address of the host.
  final pulumi.Input<String>? ip;

  /// Creates a new [ContainerGroupHostAlias].
  /// [hostnames] The information about the host.
  /// [ip] The IP address of the host.
  ContainerGroupHostAlias({
    this.hostnames,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'ip': ?ip,
    };
  }

  factory ContainerGroupHostAlias.fromMap(Map<String, dynamic> map) {
    return ContainerGroupHostAlias(
      hostnames: map['hostnames'] == null ? null : ((map['hostnames']! as List).cast<String>()).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
    );
  }
}

