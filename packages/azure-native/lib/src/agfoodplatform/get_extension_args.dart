// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agfoodplatform_get_extension_args_doc}
/// Arguments for getExtension.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_get_extension_args_doc}
class GetExtensionArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// Id of extension resource.
  final pulumi.Input<String> extensionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [extensionId] Id of extension resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetExtensionArgs({
    required String dataManagerForAgricultureResourceName,
    required String extensionId,
    required String resourceGroupName,
  }) :
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      extensionId = pulumi.Input.asInput<String>(extensionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'extensionId': extensionId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionArgs(
      dataManagerForAgricultureResourceName: map['dataManagerForAgricultureResourceName'] as String,
      extensionId: map['extensionId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

