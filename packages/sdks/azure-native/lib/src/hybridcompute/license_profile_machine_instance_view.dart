// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_profile_machine_instance_view_esu_properties.dart';
import 'product_feature.dart';

/// License Profile Instance View in Machine Properties.
class LicenseProfileMachineInstanceView {
  /// Properties for the Machine ESU profile.
  final pulumi.Input<LicenseProfileMachineInstanceViewEsuProperties>? esuProfile;
  /// The list of product features.
  final pulumi.Input<List<ProductFeature>>? productFeatures;
  /// Indicates the product type of the license.
  final pulumi.Input<String>? productType;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final pulumi.Input<bool>? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final pulumi.Input<String>? subscriptionStatus;

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
      'esuProfile': ?pulumi.Input.mapOptionalInputValue<LicenseProfileMachineInstanceViewEsuProperties, Map<String, dynamic>>(esuProfile, (value) => value.toMap()),
      'productFeatures': ?pulumi.Input.mapOptionalInputValue<List<ProductFeature>, List<Map<String, dynamic>>>(productFeatures, (value) => pulumi.Input.encodeList<ProductFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productType': ?productType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory LicenseProfileMachineInstanceView.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceView(
      esuProfile: (() { final guardedValue = map['esuProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseProfileMachineInstanceViewEsuProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      productFeatures: (() { final guardedValue = map['productFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProductFeature>(guardedValue, (value) => ProductFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareAssuranceCustomer: (() { final guardedValue = map['softwareAssuranceCustomer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subscriptionStatus: (() { final guardedValue = map['subscriptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

