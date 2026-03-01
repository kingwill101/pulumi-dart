// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'license_profile_machine_instance_view_esu_properties_response.dart';
import 'product_feature_response.dart';

/// License Profile Instance View in Machine Properties.
class LicenseProfileMachineInstanceViewResponse {
  /// The timestamp in UTC when the billing ends.
  final String billingEndDate;
  /// The timestamp in UTC when the billing starts.
  final String billingStartDate;
  /// The timestamp in UTC when the user disenrolled the feature.
  final String disenrollmentDate;
  /// The timestamp in UTC when the user enrolls the feature.
  final String enrollmentDate;
  /// The errors that were encountered during the feature enrollment or disenrollment.
  final ErrorDetailResponse error;
  /// Properties for the Machine ESU profile.
  final LicenseProfileMachineInstanceViewEsuPropertiesResponse? esuProfile;
  /// Indicates the license channel.
  final String licenseChannel;
  /// Indicates the license status of the OS.
  final String licenseStatus;
  /// The list of product features.
  final List<ProductFeatureResponse>? productFeatures;
  /// Indicates the product type of the license.
  final String? productType;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final bool? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final String? subscriptionStatus;

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
      'error': error.toMap(),
      'esuProfile': ?esuProfile == null ? null : esuProfile!.toMap(),
      'licenseChannel': licenseChannel,
      'licenseStatus': licenseStatus,
      'productFeatures': ?productFeatures == null ? null : pulumi.Input.encodeList<ProductFeatureResponse, Map<String, dynamic>>(productFeatures!, (value) => value.toMap()),
      'productType': ?productType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
    };
  }

  factory LicenseProfileMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return LicenseProfileMachineInstanceViewResponse(
      billingEndDate: map['billingEndDate'] as String,
      billingStartDate: map['billingStartDate'] as String,
      disenrollmentDate: map['disenrollmentDate'] as String,
      enrollmentDate: map['enrollmentDate'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      esuProfile: map['esuProfile'] == null ? null : LicenseProfileMachineInstanceViewEsuPropertiesResponse.fromMap((map['esuProfile'] as Map).cast<String, dynamic>()),
      licenseChannel: map['licenseChannel'] as String,
      licenseStatus: map['licenseStatus'] as String,
      productFeatures: map['productFeatures'] == null ? null : pulumi.Input.decodeList<ProductFeatureResponse>(map['productFeatures'], (value) => ProductFeatureResponse.fromMap((value as Map).cast<String, dynamic>())),
      productType: map['productType'] == null ? null : map['productType'] as String,
      softwareAssuranceCustomer: map['softwareAssuranceCustomer'] == null ? null : map['softwareAssuranceCustomer'] as bool,
      subscriptionStatus: map['subscriptionStatus'] == null ? null : map['subscriptionStatus'] as String,
    );
  }
}

