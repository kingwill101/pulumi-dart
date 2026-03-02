// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_properties.dart';

/// {@template pulumi_agfoodplatform_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_extension_args_doc}
class ExtensionArgs {
  /// Additional Api Properties.
  final pulumi.Input<Map<String, ApiProperties>>? additionalApiProperties;
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// Id of extension resource.
  final pulumi.Input<String>? extensionId;
  /// Extension Version.
  final pulumi.Input<String>? extensionVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExtensionArgs].
  /// [additionalApiProperties] Additional Api Properties.
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [extensionId] Id of extension resource.
  /// [extensionVersion] Extension Version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ExtensionArgs({
    this.additionalApiProperties,
    required this.dataManagerForAgricultureResourceName,
    this.extensionId,
    this.extensionVersion,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalApiProperties': ?pulumi.Input.mapOptionalInputValue<Map<String, ApiProperties>, Map<String, Map<String, dynamic>>>(additionalApiProperties, (value) => pulumi.Input.encodeMapValues<ApiProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'extensionId': ?extensionId,
      'extensionVersion': ?extensionVersion,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      additionalApiProperties: map['additionalApiProperties'] == null ? null : (pulumi.Input.decodeMapValues<ApiProperties>(map['additionalApiProperties'], (value) => ApiProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataManagerForAgricultureResourceName: (map['dataManagerForAgricultureResourceName'] as String).input(),
      extensionId: map['extensionId'] == null ? null : (map['extensionId'] as String).input(),
      extensionVersion: map['extensionVersion'] == null ? null : (map['extensionVersion'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

