// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPeeredDnsDomain.
class GetPeeredDnsDomainArgs {
  final Input<String> name;
  final Input<String> network;
  final Input<String> project;
  final Input<String> service;

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
      name: Input.asInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      project: Input.asInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
