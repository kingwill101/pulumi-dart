// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_configuration.dart';
import 'hierarchy_information.dart';
import 'provisioning_details.dart';

/// Represents product details.
class ProductDetails {
  /// Hierarchy of the product which uniquely identifies the product.
  final HierarchyInformation hierarchyInformation;
  /// List of additional configurations customer wants in the order item apart from the ones included in the base configuration.
  final List<AdditionalConfiguration>? optInAdditionalConfigurations;
  /// Device Provisioning Details for Parent.
  final ProvisioningDetails? parentProvisioningDetails;

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
      'hierarchyInformation': hierarchyInformation.toMap(),
      'optInAdditionalConfigurations': ?optInAdditionalConfigurations == null ? null : pulumi.Input.encodeList<AdditionalConfiguration, Map<String, dynamic>>(optInAdditionalConfigurations!, (value) => value.toMap()),
      'parentProvisioningDetails': ?parentProvisioningDetails == null ? null : parentProvisioningDetails!.toMap(),
    };
  }

  factory ProductDetails.fromMap(Map<String, dynamic> map) {
    return ProductDetails(
      hierarchyInformation: HierarchyInformation.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      optInAdditionalConfigurations: map['optInAdditionalConfigurations'] == null ? null : pulumi.Input.decodeList<AdditionalConfiguration>(map['optInAdditionalConfigurations'], (value) => AdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      parentProvisioningDetails: map['parentProvisioningDetails'] == null ? null : ProvisioningDetails.fromMap((map['parentProvisioningDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

