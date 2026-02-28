// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_global_address_compute_v1_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_global_address_compute_v1_args_doc}
class GetGlobalAddressComputeV1Args {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalAddressComputeV1Args].
  /// [address] Required.
  /// [project] Optional.
  GetGlobalAddressComputeV1Args({
    required String address,
    String? project,
  }) :
      address = pulumi.Input.asInput<String>(address),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'project': ?project,
    };
  }

  factory GetGlobalAddressComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressComputeV1Args(
      address: map['address'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

