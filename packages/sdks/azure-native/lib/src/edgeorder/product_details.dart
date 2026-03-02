// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_configuration.dart';
import 'hierarchy_information.dart';
import 'provisioning_details.dart';

/// Represents product details.
class ProductDetails {
  /// Hierarchy of the product which uniquely identifies the product.
  final pulumi.Input<HierarchyInformation> hierarchyInformation;
  /// List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  final pulumi.Input<List<AdditionalConfiguration>>? optInAdditionalConfigurations;
  /// Device Provisioning Details for Parent.
  final pulumi.Input<ProvisioningDetails>? parentProvisioningDetails;

  /// Creates a new [ProductDetails].
  /// [hierarchyInformation] Hierarchy of the product which uniquely identifies the product.
  /// [optInAdditionalConfigurations] List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  /// [parentProvisioningDetails] Device Provisioning Details for Parent.
  ProductDetails({
    required this.hierarchyInformation,
    this.optInAdditionalConfigurations,
    this.parentProvisioningDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformation, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'optInAdditionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalConfiguration>, List<Map<String, dynamic>>>(optInAdditionalConfigurations, (value) => pulumi.Input.encodeList<AdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentProvisioningDetails': ?pulumi.Input.mapOptionalInputValue<ProvisioningDetails, Map<String, dynamic>>(parentProvisioningDetails, (value) => value.toMap()),
    };
  }

  factory ProductDetails.fromMap(Map<String, dynamic> map) {
    return ProductDetails(
      hierarchyInformation: (HierarchyInformation.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
      optInAdditionalConfigurations: map['optInAdditionalConfigurations'] == null ? null : (pulumi.Input.decodeList<AdditionalConfiguration>(map['optInAdditionalConfigurations']!, (value) => AdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentProvisioningDetails: map['parentProvisioningDetails'] == null ? null : (ProvisioningDetails.fromMap((map['parentProvisioningDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

