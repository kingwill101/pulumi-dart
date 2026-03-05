// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information.dart';
import 'provisioning_details.dart';

/// Additional Configuration details.
class AdditionalConfiguration {
  /// Hierarchy of the product which uniquely identifies the configuration.
  final pulumi.Input<HierarchyInformation> hierarchyInformation;
  /// List Provisioning Details for Devices in Additional Config.
  final pulumi.Input<List<ProvisioningDetails>>? provisioningDetails;
  /// Quantity of the product.
  final pulumi.Input<int> quantity;

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
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformation, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'provisioningDetails': ?pulumi.Input.mapOptionalInputValue<List<ProvisioningDetails>, List<Map<String, dynamic>>>(provisioningDetails, (value) => pulumi.Input.encodeList<ProvisioningDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quantity': quantity,
    };
  }

  factory AdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return AdditionalConfiguration(
      hierarchyInformation: pulumi.Input.fromValue(HierarchyInformation.fromMap((map['hierarchyInformation']! as Map).cast<String, dynamic>())),
      provisioningDetails: (() { final guardedValue = map['provisioningDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisioningDetails>(guardedValue, (value) => ProvisioningDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quantity: pulumi.Input.fromValue(map['quantity'] as int),
    );
  }
}

