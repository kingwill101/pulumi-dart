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
    this.deploymentMode,
    this.managedApplicationParameters,
    this.managedApplicationTemplate,
    this.networkFunctionTemplate,
    this.networkFunctionType,
    this.preview,
    this.skuName,
    this.skuType,
    required this.vendorName,
  });

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
      deploymentMode: map['deploymentMode'] == null ? null : (map['deploymentMode']! as String).input(),
      managedApplicationParameters: map['managedApplicationParameters'] == null ? null : (map['managedApplicationParameters']!).input(),
      managedApplicationTemplate: map['managedApplicationTemplate'] == null ? null : (map['managedApplicationTemplate']!).input(),
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : (NetworkFunctionTemplate.fromMap((map['networkFunctionTemplate']! as Map).cast<String, dynamic>())).input(),
      networkFunctionType: map['networkFunctionType'] == null ? null : (map['networkFunctionType']! as String).input(),
      preview: map['preview'] == null ? null : (map['preview']! as bool).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      skuType: map['skuType'] == null ? null : (map['skuType']! as String).input(),
      vendorName: (map['vendorName'] as String).input(),
    );
  }
}

