// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_domain_serve/app_hosting_domain_serve.dart';

/// The set of arguments for AppHostingDomain.
class AppHostingDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final Input<String> backend;

  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  final Input<String> domainId;

  /// The location of the Backend that this Domain is associated with
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  final Input<AppHostingDomainServe>? serve;

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
      map['serve'] = Input.mapOptionalInputValue<AppHostingDomainServe,
          Map<String, dynamic>>(serveValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainArgs(
      backend: Input.asInput<String>(map['backend']),
      domainId: Input.asInput<String>(map['domainId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serve: Input.asOptionalInput<AppHostingDomainServe>(map['serve']),
    );
  }
}
