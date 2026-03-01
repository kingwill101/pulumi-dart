// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_serve.dart';

/// {@template pulumi_firebase_app_hosting_domain_app_hosting_domain_args_doc}
/// The set of arguments for AppHostingDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_domain_app_hosting_domain_args_doc}
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

  /// Creates a new [AppHostingDomainArgs].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [domainId] Id of the domain to create.
  /// [location] The location of the Backend that this Domain is associated with
  /// [project] The ID of the project in which the resource belongs.
  /// [serve] The serving behavior of the domain. If specified, the domain will
  AppHostingDomainArgs({
    required String backend,
    required String domainId,
    required String location,
    String? project,
    AppHostingDomainServe? serve,
  }) : backend = pulumi.Input.asInput<String>(backend),
       domainId = pulumi.Input.asInput<String>(domainId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       serve = pulumi.Input.asOptionalInput<AppHostingDomainServe>(serve);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': backend,
      'domainId': domainId,
      'location': location,
      'project': ?project,
      'serve':
          ?pulumi.Input.mapOptionalInputValue<
            AppHostingDomainServe,
            Map<String, dynamic>
          >(serve, (value) => value.toMap()),
    };
  }

  factory AppHostingDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainArgs(
      backend: map['backend'] as String,
      domainId: map['domainId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serve: map['serve'] == null
          ? null
          : AppHostingDomainServe.fromMap(
              (map['serve'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
