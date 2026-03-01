// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_template.dart';

/// {@template pulumi_hybridnetwork_vendor_skus_args_doc}
/// The set of arguments for VendorSkus.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_vendor_skus_args_doc}
class VendorSkusArgs {
  /// The sku deployment mode.
  final pulumi.Input<String>? deploymentMode;
  /// The parameters for the managed application to be supplied by the vendor.
  final pulumi.Input<dynamic>? managedApplicationParameters;
  /// The template for the managed application deployment.
  final pulumi.Input<dynamic>? managedApplicationTemplate;
  /// The template definition of the network function.
  final pulumi.Input<NetworkFunctionTemplate>? networkFunctionTemplate;
  /// The network function type.
  final pulumi.Input<String>? networkFunctionType;
  /// Indicates if the vendor sku is in preview mode.
  final pulumi.Input<bool>? preview;
  /// The name of the sku.
  final pulumi.Input<String>? skuName;
  /// The sku type.
  final pulumi.Input<String>? skuType;
  /// The name of the vendor.
  final pulumi.Input<String> vendorName;

  /// Creates a new [VendorSkusArgs].
  /// [deploymentMode] The sku deployment mode.
  /// [managedApplicationParameters] The parameters for the managed application to be supplied by the vendor.
  /// [managedApplicationTemplate] The template for the managed application deployment.
  /// [networkFunctionTemplate] The template definition of the network function.
  /// [networkFunctionType] The network function type.
  /// [preview] Indicates if the vendor sku is in preview mode.
  /// [skuName] The name of the sku.
  /// [skuType] The sku type.
  /// [vendorName] The name of the vendor.
  VendorSkusArgs({
    pulumi.Output<String>? deploymentMode,
    pulumi.Output<dynamic>? managedApplicationParameters,
    pulumi.Output<dynamic>? managedApplicationTemplate,
    pulumi.Output<NetworkFunctionTemplate>? networkFunctionTemplate,
    pulumi.Output<String>? networkFunctionType,
    pulumi.Output<bool>? preview,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? skuType,
    required pulumi.Output<String> vendorName,
  }) :
      deploymentMode = pulumi.Input.asOptionalInput<String>(deploymentMode),
      managedApplicationParameters = pulumi.Input.asOptionalInput<dynamic>(managedApplicationParameters),
      managedApplicationTemplate = pulumi.Input.asOptionalInput<dynamic>(managedApplicationTemplate),
      networkFunctionTemplate = pulumi.Input.asOptionalInput<NetworkFunctionTemplate>(networkFunctionTemplate),
      networkFunctionType = pulumi.Input.asOptionalInput<String>(networkFunctionType),
      preview = pulumi.Input.asOptionalInput<bool>(preview),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      skuType = pulumi.Input.asOptionalInput<String>(skuType),
      vendorName = pulumi.Input.asInput<String>(vendorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'managedApplicationParameters': ?managedApplicationParameters,
      'managedApplicationTemplate': ?managedApplicationTemplate,
      'networkFunctionTemplate': ?pulumi.Input.mapOptionalInputValue<NetworkFunctionTemplate, Map<String, dynamic>>(networkFunctionTemplate, (value) => value.toMap()),
      'networkFunctionType': ?networkFunctionType,
      'preview': ?preview,
      'skuName': ?skuName,
      'skuType': ?skuType,
      'vendorName': vendorName,
    };
  }

  factory VendorSkusArgs.fromMap(Map<String, dynamic> map) {
    return VendorSkusArgs(
      deploymentMode: map['deploymentMode'] == null ? null : pulumi.Output.create<String>(map['deploymentMode'] as String),
      managedApplicationParameters: map['managedApplicationParameters'] == null ? null : pulumi.Output.create<dynamic>(map['managedApplicationParameters']),
      managedApplicationTemplate: map['managedApplicationTemplate'] == null ? null : pulumi.Output.create<dynamic>(map['managedApplicationTemplate']),
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : pulumi.Output.create<NetworkFunctionTemplate>(NetworkFunctionTemplate.fromMap((map['networkFunctionTemplate'] as Map).cast<String, dynamic>())),
      networkFunctionType: map['networkFunctionType'] == null ? null : pulumi.Output.create<String>(map['networkFunctionType'] as String),
      preview: map['preview'] == null ? null : pulumi.Output.create<bool>(map['preview'] as bool),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      skuType: map['skuType'] == null ? null : pulumi.Output.create<String>(map['skuType'] as String),
      vendorName: pulumi.Output.create<String>(map['vendorName'] as String),
    );
  }
}

