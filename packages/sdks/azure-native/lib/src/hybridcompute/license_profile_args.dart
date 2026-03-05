// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_feature.dart';

/// {@template pulumi_hybridcompute_license_profile_args_doc}
/// The set of arguments for LicenseProfile.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_license_profile_args_doc}
class LicenseProfileArgs {
  /// The resource id of the license.
  final pulumi.Input<String>? assignedLicense;
  /// The name of the license profile.
  final pulumi.Input<String>? licenseProfileName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the hybrid machine.
  final pulumi.Input<String> machineName;
  /// The list of product features.
  final pulumi.Input<List<ProductFeature>>? productFeatures;
  /// Indicates the product type of the license.
  final pulumi.Input<String>? productType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final pulumi.Input<bool>? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final pulumi.Input<String>? subscriptionStatus;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicenseProfileArgs].
  /// [assignedLicense] The resource id of the license.
  /// [licenseProfileName] The name of the license profile.
  /// [location] The geo-location where the resource lives
  /// [machineName] The name of the hybrid machine.
  /// [productFeatures] The list of product features.
  /// [productType] Indicates the product type of the license.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [softwareAssuranceCustomer] Specifies if this machine is licensed as part of a Software Assurance agreement.
  /// [subscriptionStatus] Indicates the subscription status of the product.
  /// [tags] Resource tags.
  LicenseProfileArgs({
    this.assignedLicense,
    this.licenseProfileName,
    this.location,
    required this.machineName,
    this.productFeatures,
    this.productType,
    required this.resourceGroupName,
    this.softwareAssuranceCustomer,
    this.subscriptionStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?assignedLicense,
      'licenseProfileName': ?licenseProfileName,
      'location': ?location,
      'machineName': machineName,
      'productFeatures': ?pulumi.Input.mapOptionalInputValue<List<ProductFeature>, List<Map<String, dynamic>>>(productFeatures, (value) => pulumi.Input.encodeList<ProductFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productType': ?productType,
      'resourceGroupName': resourceGroupName,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
      'tags': ?tags,
    };
  }

  factory LicenseProfileArgs.fromMap(Map<String, dynamic> map) {
    return LicenseProfileArgs(
      assignedLicense: (() { final guardedValue = map['assignedLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseProfileName: (() { final guardedValue = map['licenseProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      productFeatures: (() { final guardedValue = map['productFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProductFeature>(guardedValue, (value) => ProductFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      softwareAssuranceCustomer: (() { final guardedValue = map['softwareAssuranceCustomer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subscriptionStatus: (() { final guardedValue = map['subscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

