// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_details_response.dart';
import 'display_info_response.dart';
import 'hierarchy_information_response.dart';
import 'term_commitment_information_response.dart';

/// Device details for configuration.
class ConfigurationDeviceDetailsResponse {
  /// List of device details.
  final pulumi.Input<List<DeviceDetailsResponse>> deviceDetails;

  /// Display details of the product.
  final pulumi.Input<DisplayInfoResponse>? displayInfo;

  /// Hierarchy of the product which uniquely identifies the configuration.
  final pulumi.Input<HierarchyInformationResponse> hierarchyInformation;

  /// Identification type of the configuration.
  final pulumi.Input<String> identificationType;

  /// Quantity of the product.
  final pulumi.Input<int> quantity;

  /// Term Commitment Information of the Device.
  final pulumi.Input<TermCommitmentInformationResponse>
  termCommitmentInformation;

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
      'deviceDetails':
          pulumi.Input.mapInputValue<
            List<DeviceDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            deviceDetails,
            (value) =>
                pulumi.Input.encodeList<
                  DeviceDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'displayInfo':
          ?pulumi.Input.mapOptionalInputValue<
            DisplayInfoResponse,
            Map<String, dynamic>
          >(displayInfo, (value) => value.toMap()),
      'hierarchyInformation':
          pulumi.Input.mapInputValue<
            HierarchyInformationResponse,
            Map<String, dynamic>
          >(hierarchyInformation, (value) => value.toMap()),
      'identificationType': identificationType,
      'quantity': quantity,
      'termCommitmentInformation':
          pulumi.Input.mapInputValue<
            TermCommitmentInformationResponse,
            Map<String, dynamic>
          >(termCommitmentInformation, (value) => value.toMap()),
    };
  }

  factory ConfigurationDeviceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationDeviceDetailsResponse(
      deviceDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DeviceDetailsResponse>(
          map['deviceDetails']!,
          (value) => DeviceDetailsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      displayInfo: (() {
        final guardedValue = map['displayInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DisplayInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hierarchyInformation: pulumi.Input.fromValue(
        HierarchyInformationResponse.fromMap(
          (map['hierarchyInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
      identificationType: pulumi.Input.fromValue(
        map['identificationType'] as String,
      ),
      quantity: pulumi.Input.fromValue(map['quantity'] as int),
      termCommitmentInformation: pulumi.Input.fromValue(
        TermCommitmentInformationResponse.fromMap(
          (map['termCommitmentInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
