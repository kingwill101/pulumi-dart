// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_profile_machine_instance_view_esu_properties.dart';
import 'product_feature.dart';

/// License Profile Instance View in Machine Properties.
class LicenseProfileMachineInstanceView {
  /// Properties for the Machine ESU profile.
  final LicenseProfileMachineInstanceViewEsuProperties? esuProfile;
  /// The list of product features.
  final List<ProductFeature>? productFeatures;
  /// Indicates the product type of the license.
  final String? productType;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final bool? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final String? subscriptionStatus;

  /// Creates a new [LicenseProfileMachineInstanceView].
  /// [esuProfile] Properties for the Machine ESU profile.
  /// [productFeatures] The list of product features.
  /// [productType] Indicates the product type of the license.
  /// [softwareAssuranceCustomer] Specifies if this machine is licensed as part of a Software Assurance agreement.
  /// [subscriptionStatus] Indicates the subscription status of the product.
  LicenseProfileMachineInstanceView({
    this.esuProfile,
    this.productFeatures,
    this.productType,
    this.softwareAssuranceCustomer,
    this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'esuProfile': ?esuProfile == null ? null : esuProfile!.toMap(),
      'productFeatures': ?productFeatures == null ? null : pulumi.Input.encodeList<ProductFeature, Map<String, dynamic>>(productFeatures!, (value) => value.toMap()),
      'productType': ?productType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory LicenseProfileMachineInstanceView.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceView(
      esuProfile: map['esuProfile'] == null ? null : LicenseProfileMachineInstanceViewEsuProperties.fromMap((map['esuProfile'] as Map).cast<String, dynamic>()),
      productFeatures: map['productFeatures'] == null ? null : pulumi.Input.decodeList<ProductFeature>(map['productFeatures'], (value) => ProductFeature.fromMap((value as Map).cast<String, dynamic>())),
      productType: map['productType'] == null ? null : map['productType'] as String,
      softwareAssuranceCustomer: map['softwareAssuranceCustomer'] == null ? null : map['softwareAssuranceCustomer'] as bool,
      subscriptionStatus: map['subscriptionStatus'] == null ? null : map['subscriptionStatus'] as String,
    );
  }
}

