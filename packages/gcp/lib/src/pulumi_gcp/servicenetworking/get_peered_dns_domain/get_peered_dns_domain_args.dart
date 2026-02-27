// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPeeredDnsDomain.
class GetPeeredDnsDomainArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<String> network;
  final pulumi.Input<String> project;
  final pulumi.Input<String> service;

  GetPeeredDnsDomainArgs({
    required this.name,
    required this.network,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['network'] = network;
    map['project'] = project;
    map['service'] = service;
    return map;
  }

  factory GetPeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
