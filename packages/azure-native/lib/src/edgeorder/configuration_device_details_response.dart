// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_details_response.dart';
import 'display_info_response.dart';
import 'hierarchy_information_response.dart';
import 'term_commitment_information_response.dart';

/// Device details for configuration.
class ConfigurationDeviceDetailsResponse {
  /// List of device details.
  final List<DeviceDetailsResponse> deviceDetails;
  /// Display details of the product.
  final DisplayInfoResponse? displayInfo;
  /// Hierarchy of the product which uniquely identifies the configuration.
  final HierarchyInformationResponse hierarchyInformation;
  /// Identification type of the configuration.
  final String identificationType;
  /// Quantity of the product.
  final int quantity;
  /// Term Commitment Information of the Device.
  final TermCommitmentInformationResponse termCommitmentInformation;

  /// Creates a new [ConfigurationDeviceDetailsResponse].
  /// [deviceDetails] List of device details.
  /// [displayInfo] Display details of the product.
  /// [hierarchyInformation] Hierarchy of the product which uniquely identifies the configuration.
  /// [identificationType] Identification type of the configuration.
  /// [quantity] Quantity of the product.
  /// [termCommitmentInformation] Term Commitment Information of the Device.
  ConfigurationDeviceDetailsResponse({
    required this.deviceDetails,
    this.displayInfo,
    required this.hierarchyInformation,
    required this.identificationType,
    required this.quantity,
    required this.termCommitmentInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceDetails': pulumi.Input.encodeList<DeviceDetailsResponse, Map<String, dynamic>>(deviceDetails, (value) => value.toMap()),
      'displayInfo': ?displayInfo == null ? null : displayInfo!.toMap(),
      'hierarchyInformation': hierarchyInformation.toMap(),
      'identificationType': identificationType,
      'quantity': quantity,
      'termCommitmentInformation': termCommitmentInformation.toMap(),
    };
  }

  factory ConfigurationDeviceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationDeviceDetailsResponse(
      deviceDetails: pulumi.Input.decodeList<DeviceDetailsResponse>(map['deviceDetails'], (value) => DeviceDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayInfo: map['displayInfo'] == null ? null : DisplayInfoResponse.fromMap((map['displayInfo'] as Map).cast<String, dynamic>()),
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      identificationType: map['identificationType'] as String,
      quantity: map['quantity'] as int,
      termCommitmentInformation: TermCommitmentInformationResponse.fromMap((map['termCommitmentInformation'] as Map).cast<String, dynamic>()),
    );
  }
}

