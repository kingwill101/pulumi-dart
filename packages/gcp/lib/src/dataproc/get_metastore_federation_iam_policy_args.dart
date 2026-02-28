// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_federation_iam_policy_get_metastore_federation_iam_policy_args_doc}
/// Arguments for getMetastoreFederationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_federation_iam_policy_get_metastore_federation_iam_policy_args_doc}
class GetMetastoreFederationIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> federationId;

  /// The location where the metastore federation should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetastoreFederationIamPolicyArgs].
  /// [federationId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location where the metastore federation should reside.
  /// [project] The ID of the project in which the resource belongs.
  GetMetastoreFederationIamPolicyArgs({
    required String federationId,
    String? location,
    String? project,
  })  : federationId = pulumi.Input.asInput<String>(federationId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['federationId'] = federationId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMetastoreFederationIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreFederationIamPolicyArgs(
      federationId: map['federationId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
