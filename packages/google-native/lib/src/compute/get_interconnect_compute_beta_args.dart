// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_interconnect_compute_beta_args_doc}
/// Arguments for getInterconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_interconnect_compute_beta_args_doc}
class GetInterconnectComputeBetaArgs {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectComputeBetaArgs].
  /// [interconnect] Required.
  /// [project] Optional.
  GetInterconnectComputeBetaArgs({
    required String interconnect,
    String? project,
  })  : interconnect = pulumi.Input.asInput<String>(interconnect),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interconnect'] = interconnect;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInterconnectComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectComputeBetaArgs(
      interconnect: map['interconnect'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
