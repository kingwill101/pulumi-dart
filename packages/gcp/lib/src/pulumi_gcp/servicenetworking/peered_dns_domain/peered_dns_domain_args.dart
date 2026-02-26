// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PeeredDnsDomain.
class PeeredDnsDomainArgs {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  final Input<String> dnsSuffix;

  /// Internal name used for the peered DNS domain.
  final Input<String>? name;

  /// The network in the consumer project.
  final Input<String> network;

  /// The producer project number. If not provided, the provider project is used.
  final Input<String>? project;

  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  final Input<String>? service;

  PeeredDnsDomainArgs({
    required this.dnsSuffix,
    this.name,
    required this.network,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsSuffix'] = dnsSuffix;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory PeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return PeeredDnsDomainArgs(
      dnsSuffix: Input.asInput<String>(map['dnsSuffix']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asOptionalInput<String>(map['service']),
    );
  }
}
