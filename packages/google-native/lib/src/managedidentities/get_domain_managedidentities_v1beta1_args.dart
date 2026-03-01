// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_domain_managedidentities_v1beta1_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_domain_managedidentities_v1beta1_args_doc}
class GetDomainManagedidentitiesV1beta1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainManagedidentitiesV1beta1Args].
  /// [domainId] Required.
  /// [project] Optional.
  GetDomainManagedidentitiesV1beta1Args({
    required String domainId,
    String? project,
  }) : domainId = pulumi.Input.asInput<String>(domainId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainId': domainId, 'project': ?project};
  }

  factory GetDomainManagedidentitiesV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainManagedidentitiesV1beta1Args(
      domainId: map['domainId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
