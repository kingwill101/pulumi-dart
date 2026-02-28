// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
/// Arguments for getPeeredDnsDomain.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
class GetPeeredDnsDomainArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<String> network;
  final pulumi.Input<String> project;
  final pulumi.Input<String> service;

  /// Creates a new [GetPeeredDnsDomainArgs].
  /// [name] Required.
  /// [network] Required.
  /// [project] Required.
  /// [service] Required.
  GetPeeredDnsDomainArgs({
    required String name,
    required String network,
    required String project,
    required String service,
  })  : name = pulumi.Input.asInput<String>(name),
        network = pulumi.Input.asInput<String>(network),
        project = pulumi.Input.asInput<String>(project),
        service = pulumi.Input.asInput<String>(service);

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
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      service: map['service'] as String,
    );
  }
}
