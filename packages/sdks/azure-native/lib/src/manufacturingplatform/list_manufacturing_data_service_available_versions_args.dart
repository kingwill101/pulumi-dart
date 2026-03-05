// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_manufacturingplatform_list_manufacturing_data_service_available_versions_args_doc}
/// Arguments for listManufacturingDataServiceAvailableVersions.
/// {@endtemplate}
/// {@macro pulumi_manufacturingplatform_list_manufacturing_data_service_available_versions_args_doc}
class ListManufacturingDataServiceAvailableVersionsArgs {
  /// Name.
  final pulumi.Input<String> mdsResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListManufacturingDataServiceAvailableVersionsArgs].
  /// [mdsResourceName] Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListManufacturingDataServiceAvailableVersionsArgs({
    required this.mdsResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mdsResourceName': mdsResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListManufacturingDataServiceAvailableVersionsArgs.fromMap(Map<String, dynamic> map) {
    return ListManufacturingDataServiceAvailableVersionsArgs(
      mdsResourceName: pulumi.Input.fromValue(map['mdsResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

