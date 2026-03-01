// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_configuration_response.dart';
import 'configuration_device_details_response.dart';
import 'device_details_response.dart';
import 'display_info_response.dart';
import 'hierarchy_information_response.dart';
import 'provisioning_details_response.dart';
import 'term_commitment_information_response.dart';

/// Represents product details.
class ProductDetailsResponse {
  /// Details of all child configurations that are part of the order item.
  final List<ConfigurationDeviceDetailsResponse> childConfigurationDeviceDetails;
  /// Display details of the product.
  final DisplayInfoResponse? displayInfo;
  /// Hierarchy of the product which uniquely identifies the product.
  final HierarchyInformationResponse hierarchyInformation;
  /// Identification type of the configuration.
  final String identificationType;
  /// List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  final List<AdditionalConfigurationResponse>? optInAdditionalConfigurations;
  /// Device details of the parent configuration.
  final DeviceDetailsResponse parentDeviceDetails;
  /// Device Provisioning Details for Parent.
  final ProvisioningDetailsResponse? parentProvisioningDetails;
  /// Double encryption status of the configuration. Read-only field.
  final String productDoubleEncryptionStatus;
  /// Term Commitment Information of the Device.
  final TermCommitmentInformationResponse termCommitmentInformation;

  /// Creates a new [ProductDetailsResponse].
  /// [childConfigurationDeviceDetails] Details of all child configurations that are part of the order item.
  /// [displayInfo] Display details of the product.
  /// [hierarchyInformation] Hierarchy of the product which uniquely identifies the product.
  /// [identificationType] Identification type of the configuration.
  /// [optInAdditionalConfigurations] List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  /// [parentDeviceDetails] Device details of the parent configuration.
  /// [parentProvisioningDetails] Device Provisioning Details for Parent.
  /// [productDoubleEncryptionStatus] Double encryption status of the configuration. Read-only field.
  /// [termCommitmentInformation] Term Commitment Information of the Device.
  ProductDetailsResponse({
    required this.childConfigurationDeviceDetails,
    this.displayInfo,
    required this.hierarchyInformation,
    required this.identificationType,
    this.optInAdditionalConfigurations,
    required this.parentDeviceDetails,
    this.parentProvisioningDetails,
    required this.productDoubleEncryptionStatus,
    required this.termCommitmentInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childConfigurationDeviceDetails': pulumi.Input.encodeList<ConfigurationDeviceDetailsResponse, Map<String, dynamic>>(childConfigurationDeviceDetails, (value) => value.toMap()),
      'displayInfo': ?displayInfo == null ? null : displayInfo!.toMap(),
      'hierarchyInformation': hierarchyInformation.toMap(),
      'identificationType': identificationType,
      'optInAdditionalConfigurations': ?optInAdditionalConfigurations == null ? null : pulumi.Input.encodeList<AdditionalConfigurationResponse, Map<String, dynamic>>(optInAdditionalConfigurations!, (value) => value.toMap()),
      'parentDeviceDetails': parentDeviceDetails.toMap(),
      'parentProvisioningDetails': ?parentProvisioningDetails == null ? null : parentProvisioningDetails!.toMap(),
      'productDoubleEncryptionStatus': productDoubleEncryptionStatus,
      'termCommitmentInformation': termCommitmentInformation.toMap(),
    };
  }

  factory ProductDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProductDetailsResponse(
      childConfigurationDeviceDetails: pulumi.Input.decodeList<ConfigurationDeviceDetailsResponse>(map['childConfigurationDeviceDetails'], (value) => ConfigurationDeviceDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayInfo: map['displayInfo'] == null ? null : DisplayInfoResponse.fromMap((map['displayInfo'] as Map).cast<String, dynamic>()),
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      identificationType: map['identificationType'] as String,
      optInAdditionalConfigurations: map['optInAdditionalConfigurations'] == null ? null : pulumi.Input.decodeList<AdditionalConfigurationResponse>(map['optInAdditionalConfigurations'], (value) => AdditionalConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      parentDeviceDetails: DeviceDetailsResponse.fromMap((map['parentDeviceDetails'] as Map).cast<String, dynamic>()),
      parentProvisioningDetails: map['parentProvisioningDetails'] == null ? null : ProvisioningDetailsResponse.fromMap((map['parentProvisioningDetails'] as Map).cast<String, dynamic>()),
      productDoubleEncryptionStatus: map['productDoubleEncryptionStatus'] as String,
      termCommitmentInformation: TermCommitmentInformationResponse.fromMap((map['termCommitmentInformation'] as Map).cast<String, dynamic>()),
    );
  }
}

