// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PeeredDnsDomain.
class PeeredDnsDomainArgs {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  final pulumi.Input<String> dnsSuffix;

  /// Internal name used for the peered DNS domain.
  final pulumi.Input<String>? name;

  /// The network in the consumer project.
  final pulumi.Input<String> network;

  /// The producer project number. If not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  final pulumi.Input<String>? service;

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
      dnsSuffix: pulumi.Input.asInput<String>(map['dnsSuffix']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asOptionalInput<String>(map['service']),
    );
  }
}
