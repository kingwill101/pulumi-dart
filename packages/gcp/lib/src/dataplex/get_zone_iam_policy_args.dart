// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_zone_iam_policy_get_zone_iam_policy_args_doc}
/// Arguments for getZoneIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_zone_iam_policy_get_zone_iam_policy_args_doc}
class GetZoneIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataplexZone;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> lake;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetZoneIamPolicyArgs].
  /// [dataplexZone] Used to find the parent resource to bind the IAM policy to
  /// [lake] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  GetZoneIamPolicyArgs({
    required String dataplexZone,
    required String lake,
    String? location,
    String? project,
  }) : dataplexZone = pulumi.Input.asInput<String>(dataplexZone),
       lake = pulumi.Input.asInput<String>(lake),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexZone': dataplexZone,
      'lake': lake,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneIamPolicyArgs(
      dataplexZone: map['dataplexZone'] as String,
      lake: map['lake'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
