// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'license_profile_machine_instance_view_esu_properties_response.dart';
import 'product_feature_response.dart';

/// License Profile Instance View in Machine Properties.
class LicenseProfileMachineInstanceViewResponse {
  /// The timestamp in UTC when the billing ends.
  final pulumi.Input<String> billingEndDate;
  /// The timestamp in UTC when the billing starts.
  final pulumi.Input<String> billingStartDate;
  /// The timestamp in UTC when the user disenrolled the feature.
  final pulumi.Input<String> disenrollmentDate;
  /// The timestamp in UTC when the user enrolls the feature.
  final pulumi.Input<String> enrollmentDate;
  /// The errors that were encountered during the feature enrollment or disenrollment.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Properties for the Machine ESU profile.
  final pulumi.Input<LicenseProfileMachineInstanceViewEsuPropertiesResponse>? esuProfile;
  /// Indicates the license channel.
  final pulumi.Input<String> licenseChannel;
  /// Indicates the license status of the OS.
  final pulumi.Input<String> licenseStatus;
  /// The list of product features.
  final pulumi.Input<List<ProductFeatureResponse>>? productFeatures;
  /// Indicates the product type of the license.
  final pulumi.Input<String>? productType;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final pulumi.Input<bool>? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final pulumi.Input<String>? subscriptionStatus;

  /// Creates a new [LicenseProfileMachineInstanceViewResponse].
  /// [billingEndDate] The timestamp in UTC when the billing ends.
  /// [billingStartDate] The timestamp in UTC when the billing starts.
  /// [disenrollmentDate] The timestamp in UTC when the user disenrolled the feature.
  /// [enrollmentDate] The timestamp in UTC when the user enrolls the feature.
  /// [error] The errors that were encountered during the feature enrollment or disenrollment.
  /// [esuProfile] Properties for the Machine ESU profile.
  /// [licenseChannel] Indicates the license channel.
  /// [licenseStatus] Indicates the license status of the OS.
  /// [productFeatures] The list of product features.
  /// [productType] Indicates the product type of the license.
  /// [softwareAssuranceCustomer] Specifies if this machine is licensed as part of a Software Assurance agreement.
  /// [subscriptionStatus] Indicates the subscription status of the product.
  LicenseProfileMachineInstanceViewResponse({
    required this.billingEndDate,
    required this.billingStartDate,
    required this.disenrollmentDate,
    required this.enrollmentDate,
    required this.error,
    this.esuProfile,
    required this.licenseChannel,
    required this.licenseStatus,
    this.productFeatures,
    this.productType,
    this.softwareAssuranceCustomer,
    this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingEndDate': billingEndDate,
      'billingStartDate': billingStartDate,
      'disenrollmentDate': disenrollmentDate,
      'enrollmentDate': enrollmentDate,
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'esuProfile': ?pulumi.Input.mapOptionalInputValue<LicenseProfileMachineInstanceViewEsuPropertiesResponse, Map<String, dynamic>>(esuProfile, (value) => value.toMap()),
      'licenseChannel': licenseChannel,
      'licenseStatus': licenseStatus,
      'productFeatures': ?pulumi.Input.mapOptionalInputValue<List<ProductFeatureResponse>, List<Map<String, dynamic>>>(productFeatures, (value) => pulumi.Input.encodeList<ProductFeatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productType': ?productType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory LicenseProfileMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewResponse(
      billingEndDate: (map['billingEndDate'] as String).input(),
      billingStartDate: (map['billingStartDate'] as String).input(),
      disenrollmentDate: (map['disenrollmentDate'] as String).input(),
      enrollmentDate: (map['enrollmentDate'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      esuProfile: map['esuProfile'] == null ? null : (LicenseProfileMachineInstanceViewEsuPropertiesResponse.fromMap((map['esuProfile'] as Map).cast<String, dynamic>())).input(),
      licenseChannel: (map['licenseChannel'] as String).input(),
      licenseStatus: (map['licenseStatus'] as String).input(),
      productFeatures: map['productFeatures'] == null ? null : (pulumi.Input.decodeList<ProductFeatureResponse>(map['productFeatures'], (value) => ProductFeatureResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      productType: map['productType'] == null ? null : (map['productType'] as String).input(),
      softwareAssuranceCustomer: map['softwareAssuranceCustomer'] == null ? null : (map['softwareAssuranceCustomer'] as bool).input(),
      subscriptionStatus: map['subscriptionStatus'] == null ? null : (map['subscriptionStatus'] as String).input(),
    );
  }
}

