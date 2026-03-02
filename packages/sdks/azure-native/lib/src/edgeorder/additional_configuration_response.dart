// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information_response.dart';
import 'provisioning_details_response.dart';

/// Additional Configuration details.
class AdditionalConfigurationResponse {
  /// Hierarchy of the product which uniquely identifies the configuration.
  final pulumi.Input<HierarchyInformationResponse> hierarchyInformation;
  /// List Provisioning Details for Devices in Additional Config.
  final pulumi.Input<List<ProvisioningDetailsResponse>>? provisioningDetails;
  /// Quantity of the product.
  final pulumi.Input<int> quantity;

  /// Creates a new [AdditionalConfigurationResponse].
  /// [hierarchyInformation] Hierarchy of the product which uniquely identifies the configuration.
  /// [provisioningDetails] List Provisioning Details for Devices in Additional Config.
  /// [quantity] Quantity of the product.
  AdditionalConfigurationResponse({
    required this.hierarchyInformation,
    this.provisioningDetails,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformationResponse, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'provisioningDetails': ?pulumi.Input.mapOptionalInputValue<List<ProvisioningDetailsResponse>, List<Map<String, dynamic>>>(provisioningDetails, (value) => pulumi.Input.encodeList<ProvisioningDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quantity': quantity,
    };
  }

  factory AdditionalConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalConfigurationResponse(
      hierarchyInformation: (HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
      provisioningDetails: map['provisioningDetails'] == null ? null : (pulumi.Input.decodeList<ProvisioningDetailsResponse>(map['provisioningDetails'], (value) => ProvisioningDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quantity: (map['quantity'] as int).input(),
    );
  }
}

