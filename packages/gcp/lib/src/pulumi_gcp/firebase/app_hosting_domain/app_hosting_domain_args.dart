// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_domain_serve/app_hosting_domain_serve.dart';

/// The set of arguments for AppHostingDomain.
class AppHostingDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String> backend;

  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  final pulumi.Input<String> domainId;

  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  final pulumi.Input<AppHostingDomainServe>? serve;

  AppHostingDomainArgs({
    required this.backend,
    required this.domainId,
    required this.location,
    this.project,
    this.serve,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backend'] = backend;
    map['domainId'] = domainId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serveValue = serve;
    if (serveValue != null) {
      map['serve'] = pulumi.Input.mapOptionalInputValue<AppHostingDomainServe,
          Map<String, dynamic>>(serveValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainArgs(
      backend: pulumi.Input.asInput<String>(map['backend']),
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serve: pulumi.Input.asOptionalInput<AppHostingDomainServe>(map['serve']),
    );
  }
}
