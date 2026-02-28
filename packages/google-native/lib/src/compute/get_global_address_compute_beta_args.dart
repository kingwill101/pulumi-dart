// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_address_compute_beta_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_address_compute_beta_args_doc}
class GetGlobalAddressComputeBetaArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalAddressComputeBetaArgs].
  /// [address] Required.
  /// [project] Optional.
  GetGlobalAddressComputeBetaArgs({
    required String address,
    String? project,
  })  : address = pulumi.Input.asInput<String>(address),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalAddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressComputeBetaArgs(
      address: map['address'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
