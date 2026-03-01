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
    pulumi.Output<Map<String, ApiProperties>>? additionalApiProperties,
    required pulumi.Output<String> dataManagerForAgricultureResourceName,
    pulumi.Output<String>? extensionId,
    pulumi.Output<String>? extensionVersion,
    required pulumi.Output<String> resourceGroupName,
  }) :
      additionalApiProperties = pulumi.Input.asOptionalInput<Map<String, ApiProperties>>(additionalApiProperties),
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      extensionId = pulumi.Input.asOptionalInput<String>(extensionId),
      extensionVersion = pulumi.Input.asOptionalInput<String>(extensionVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      additionalApiProperties: map['additionalApiProperties'] == null ? null : pulumi.Output.create<Map<String, ApiProperties>>(pulumi.Input.decodeMapValues<ApiProperties>(map['additionalApiProperties'], (value) => ApiProperties.fromMap((value as Map).cast<String, dynamic>()))),
      dataManagerForAgricultureResourceName: pulumi.Output.create<String>(map['dataManagerForAgricultureResourceName'] as String),
      extensionId: map['extensionId'] == null ? null : pulumi.Output.create<String>(map['extensionId'] as String),
      extensionVersion: map['extensionVersion'] == null ? null : pulumi.Output.create<String>(map['extensionVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

