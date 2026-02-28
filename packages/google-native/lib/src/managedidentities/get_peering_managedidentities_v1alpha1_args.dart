// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_peering_managedidentities_v1alpha1_args_doc}
/// Arguments for getPeering.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_peering_managedidentities_v1alpha1_args_doc}
class GetPeeringManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringManagedidentitiesV1alpha1Args].
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringManagedidentitiesV1alpha1Args({
    required String peeringId,
    String? project,
  }) :
      peeringId = pulumi.Input.asInput<String>(peeringId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringManagedidentitiesV1alpha1Args(
      peeringId: map['peeringId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

