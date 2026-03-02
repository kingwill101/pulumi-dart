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
  final pulumi.Input<List<ConfigurationDeviceDetailsResponse>> childConfigurationDeviceDetails;
  /// Display details of the product.
  final pulumi.Input<DisplayInfoResponse>? displayInfo;
  /// Hierarchy of the product which uniquely identifies the product.
  final pulumi.Input<HierarchyInformationResponse> hierarchyInformation;
  /// Identification type of the configuration.
  final pulumi.Input<String> identificationType;
  /// List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  final pulumi.Input<List<AdditionalConfigurationResponse>>? optInAdditionalConfigurations;
  /// Device details of the parent configuration.
  final pulumi.Input<DeviceDetailsResponse> parentDeviceDetails;
  /// Device Provisioning Details for Parent.
  final pulumi.Input<ProvisioningDetailsResponse>? parentProvisioningDetails;
  /// Double encryption status of the configuration. Read-only field.
  final pulumi.Input<String> productDoubleEncryptionStatus;
  /// Term Commitment Information of the Device.
  final pulumi.Input<TermCommitmentInformationResponse> termCommitmentInformation;

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
      'childConfigurationDeviceDetails': pulumi.Input.mapInputValue<List<ConfigurationDeviceDetailsResponse>, List<Map<String, dynamic>>>(childConfigurationDeviceDetails, (value) => pulumi.Input.encodeList<ConfigurationDeviceDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayInfo': ?pulumi.Input.mapOptionalInputValue<DisplayInfoResponse, Map<String, dynamic>>(displayInfo, (value) => value.toMap()),
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformationResponse, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'identificationType': identificationType,
      'optInAdditionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalConfigurationResponse>, List<Map<String, dynamic>>>(optInAdditionalConfigurations, (value) => pulumi.Input.encodeList<AdditionalConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentDeviceDetails': pulumi.Input.mapInputValue<DeviceDetailsResponse, Map<String, dynamic>>(parentDeviceDetails, (value) => value.toMap()),
      'parentProvisioningDetails': ?pulumi.Input.mapOptionalInputValue<ProvisioningDetailsResponse, Map<String, dynamic>>(parentProvisioningDetails, (value) => value.toMap()),
      'productDoubleEncryptionStatus': productDoubleEncryptionStatus,
      'termCommitmentInformation': pulumi.Input.mapInputValue<TermCommitmentInformationResponse, Map<String, dynamic>>(termCommitmentInformation, (value) => value.toMap()),
    };
  }

  factory ProductDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProductDetailsResponse(
      childConfigurationDeviceDetails: (pulumi.Input.decodeList<ConfigurationDeviceDetailsResponse>(map['childConfigurationDeviceDetails'], (value) => ConfigurationDeviceDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayInfo: map['displayInfo'] == null ? null : (DisplayInfoResponse.fromMap((map['displayInfo'] as Map).cast<String, dynamic>())).input(),
      hierarchyInformation: (HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
      identificationType: (map['identificationType'] as String).input(),
      optInAdditionalConfigurations: map['optInAdditionalConfigurations'] == null ? null : (pulumi.Input.decodeList<AdditionalConfigurationResponse>(map['optInAdditionalConfigurations'], (value) => AdditionalConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentDeviceDetails: (DeviceDetailsResponse.fromMap((map['parentDeviceDetails'] as Map).cast<String, dynamic>())).input(),
      parentProvisioningDetails: map['parentProvisioningDetails'] == null ? null : (ProvisioningDetailsResponse.fromMap((map['parentProvisioningDetails'] as Map).cast<String, dynamic>())).input(),
      productDoubleEncryptionStatus: (map['productDoubleEncryptionStatus'] as String).input(),
      termCommitmentInformation: (TermCommitmentInformationResponse.fromMap((map['termCommitmentInformation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

