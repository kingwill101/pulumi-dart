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
    String? assignedLicense,
    String? licenseProfileName,
    String? location,
    required String machineName,
    List<ProductFeature>? productFeatures,
    String? productType,
    required String resourceGroupName,
    bool? softwareAssuranceCustomer,
    String? subscriptionStatus,
    Map<String, String>? tags,
  }) :
      assignedLicense = pulumi.Input.asOptionalInput<String>(assignedLicense),
      licenseProfileName = pulumi.Input.asOptionalInput<String>(licenseProfileName),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineName = pulumi.Input.asInput<String>(machineName),
      productFeatures = pulumi.Input.asOptionalInput<List<ProductFeature>>(productFeatures),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      softwareAssuranceCustomer = pulumi.Input.asOptionalInput<bool>(softwareAssuranceCustomer),
      subscriptionStatus = pulumi.Input.asOptionalInput<String>(subscriptionStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      assignedLicense: map['assignedLicense'] == null ? null : map['assignedLicense'] as String,
      licenseProfileName: map['licenseProfileName'] == null ? null : map['licenseProfileName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      machineName: map['machineName'] as String,
      productFeatures: map['productFeatures'] == null ? null : pulumi.Input.decodeList<ProductFeature>(map['productFeatures'], (value) => ProductFeature.fromMap((value as Map).cast<String, dynamic>())),
      productType: map['productType'] == null ? null : map['productType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      softwareAssuranceCustomer: map['softwareAssuranceCustomer'] == null ? null : map['softwareAssuranceCustomer'] as bool,
      subscriptionStatus: map['subscriptionStatus'] == null ? null : map['subscriptionStatus'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

