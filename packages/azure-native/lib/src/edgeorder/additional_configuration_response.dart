// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information_response.dart';
import 'provisioning_details_response.dart';

/// Additional Configuration details.
class AdditionalConfigurationResponse {
  /// Hierarchy of the product which uniquely identifies the configuration.
  final HierarchyInformationResponse hierarchyInformation;
  /// List Provisioning Details for Devices in Additional Config.
  final List<ProvisioningDetailsResponse>? provisioningDetails;
  /// Quantity of the product.
  final int quantity;

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
      'hierarchyInformation': hierarchyInformation.toMap(),
      'provisioningDetails': ?provisioningDetails == null ? null : pulumi.Input.encodeList<ProvisioningDetailsResponse, Map<String, dynamic>>(provisioningDetails!, (value) => value.toMap()),
      'quantity': quantity,
    };
  }

  factory AdditionalConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalConfigurationResponse(
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      provisioningDetails: map['provisioningDetails'] == null ? null : pulumi.Input.decodeList<ProvisioningDetailsResponse>(map['provisioningDetails'], (value) => ProvisioningDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      quantity: map['quantity'] as int,
    );
  }
}

