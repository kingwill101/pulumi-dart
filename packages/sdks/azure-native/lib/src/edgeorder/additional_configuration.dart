// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information.dart';
import 'provisioning_details.dart';

/// Additional Configuration details.
class AdditionalConfiguration {
  /// Hierarchy of the product which uniquely identifies the configuration.
  final HierarchyInformation hierarchyInformation;
  /// List Provisioning Details for Devices in Additional Config.
  final List<ProvisioningDetails>? provisioningDetails;
  /// Quantity of the product.
  final int quantity;

  /// Creates a new [AdditionalConfiguration].
  /// [hierarchyInformation] Hierarchy of the product which uniquely identifies the configuration.
  /// [provisioningDetails] List Provisioning Details for Devices in Additional Config.
  /// [quantity] Quantity of the product.
  AdditionalConfiguration({
    required this.hierarchyInformation,
    this.provisioningDetails,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyInformation': hierarchyInformation.toMap(),
      'provisioningDetails': ?provisioningDetails == null ? null : pulumi.Input.encodeList<ProvisioningDetails, Map<String, dynamic>>(provisioningDetails!, (value) => value.toMap()),
      'quantity': quantity,
    };
  }

  factory AdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return AdditionalConfiguration(
      hierarchyInformation: HierarchyInformation.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      provisioningDetails: map['provisioningDetails'] == null ? null : pulumi.Input.decodeList<ProvisioningDetails>(map['provisioningDetails'], (value) => ProvisioningDetails.fromMap((value as Map).cast<String, dynamic>())),
      quantity: map['quantity'] as int,
    );
  }
}

