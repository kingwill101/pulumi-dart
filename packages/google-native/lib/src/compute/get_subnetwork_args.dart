// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_subnetwork_args_doc}
/// Arguments for getSubnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_subnetwork_args_doc}
class GetSubnetworkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetSubnetworkArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [subnetwork] Required.
  GetSubnetworkArgs({
    String? project,
    required String region,
    required String subnetwork,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       subnetwork = pulumi.Input.asInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'subnetwork': subnetwork,
    };
  }

  factory GetSubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
