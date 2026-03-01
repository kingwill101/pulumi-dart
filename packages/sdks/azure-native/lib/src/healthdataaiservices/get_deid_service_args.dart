// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthdataaiservices_get_deid_service_args_doc}
/// Arguments for getDeidService.
/// {@endtemplate}
/// {@macro pulumi_healthdataaiservices_get_deid_service_args_doc}
class GetDeidServiceArgs {
  /// The name of the deid service
  final pulumi.Input<String> deidServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeidServiceArgs].
  /// [deidServiceName] The name of the deid service
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeidServiceArgs({
    required pulumi.Output<String> deidServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      deidServiceName = pulumi.Input.asInput<String>(deidServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidServiceName': deidServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeidServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeidServiceArgs(
      deidServiceName: pulumi.Output.create<String>(map['deidServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

