// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_manufacturingplatform_get_manufacturing_data_service_args_doc}
/// Arguments for getManufacturingDataService.
/// {@endtemplate}
/// {@macro pulumi_manufacturingplatform_get_manufacturing_data_service_args_doc}
class GetManufacturingDataServiceArgs {
  /// Name.
  final pulumi.Input<String> mdsResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManufacturingDataServiceArgs].
  /// [mdsResourceName] Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManufacturingDataServiceArgs({
    required this.mdsResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mdsResourceName': mdsResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManufacturingDataServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetManufacturingDataServiceArgs(
      mdsResourceName: pulumi.Input.fromValue(map['mdsResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

