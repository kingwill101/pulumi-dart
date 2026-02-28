// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_domain_args_doc}
class GetDomainArgs {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetDomainArgs].
  /// [domainId] Required.
  /// [project] Optional.
  /// [siteId] Required.
  GetDomainArgs({
    required String domainId,
    String? project,
    required String siteId,
  }) :
      domainId = pulumi.Input.asInput<String>(domainId),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainId: map['domainId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      siteId: map['siteId'] as String,
    );
  }
}

