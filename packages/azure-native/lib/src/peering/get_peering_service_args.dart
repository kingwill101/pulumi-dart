// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_peering_service_args_doc}
/// Arguments for getPeeringService.
/// {@endtemplate}
/// {@macro pulumi_peering_get_peering_service_args_doc}
class GetPeeringServiceArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPeeringServiceArgs].
  /// [peeringServiceName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  GetPeeringServiceArgs({
    required String peeringServiceName,
    required String resourceGroupName,
  }) :
      peeringServiceName = pulumi.Input.asInput<String>(peeringServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringServiceName': peeringServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPeeringServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringServiceArgs(
      peeringServiceName: map['peeringServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

