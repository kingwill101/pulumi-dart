// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_hosting_default_domain_app_hosting_default_domain_args_doc}
/// The set of arguments for AppHostingDefaultDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_default_domain_app_hosting_default_domain_args_doc}
class AppHostingDefaultDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String> backend;
  /// Whether the domain is disabled. Defaults to false.
  final pulumi.Input<bool>? disabled;
  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  final pulumi.Input<String> domainId;
  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AppHostingDefaultDomainArgs].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [disabled] Whether the domain is disabled. Defaults to false.
  /// [domainId] Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  /// [location] The location of the Backend that this Domain is associated with
  /// [project] The ID of the project in which the resource belongs.
  AppHostingDefaultDomainArgs({
    required String backend,
    bool? disabled,
    required String domainId,
    required String location,
    String? project,
  }) :
      backend = pulumi.Input.asInput<String>(backend),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      domainId = pulumi.Input.asInput<String>(domainId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': backend,
      'disabled': ?disabled,
      'domainId': domainId,
      'location': location,
      'project': ?project,
    };
  }

  factory AppHostingDefaultDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDefaultDomainArgs(
      backend: map['backend'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      domainId: map['domainId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

