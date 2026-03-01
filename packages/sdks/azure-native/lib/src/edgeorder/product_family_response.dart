// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_information_response.dart';
import 'cost_information_response.dart';
import 'description_response.dart';
import 'filterable_property_response.dart';
import 'hierarchy_information_response.dart';
import 'image_information_response.dart';
import 'product_line_response.dart';
import 'resource_provider_details_response.dart';

/// Product Family.
class ProductFamilyResponse {
  /// Availability information of the product system.
  final AvailabilityInformationResponse availabilityInformation;
  /// Cost information for the product system.
  final CostInformationResponse costInformation;
  /// Description related to the product system.
  final DescriptionResponse description;
  /// Display Name for the product system.
  final String displayName;
  /// List of filters supported for a product.
  final List<FilterablePropertyResponse> filterableProperties;
  /// The entity responsible for fulfillment of the item at the given hierarchy level.
  final String fulfilledBy;
  /// Hierarchy information of a product.
  final HierarchyInformationResponse hierarchyInformation;
  /// Image information for the product system.
  final List<ImageInformationResponse> imageInformation;
  /// List of product lines supported in the product family.
  final List<ProductLineResponse> productLines;
  /// Contains details related to resource provider.
  final List<ResourceProviderDetailsResponse>? resourceProviderDetails;

  /// Creates a new [ProductFamilyResponse].
  /// [availabilityInformation] Availability information of the product system.
  /// [costInformation] Cost information for the product system.
  /// [description] Description related to the product system.
  /// [displayName] Display Name for the product system.
  /// [filterableProperties] List of filters supported for a product.
  /// [fulfilledBy] The entity responsible for fulfillment of the item at the given hierarchy level.
  /// [hierarchyInformation] Hierarchy information of a product.
  /// [imageInformation] Image information for the product system.
  /// [productLines] List of product lines supported in the product family.
  /// [resourceProviderDetails] Contains details related to resource provider.
  ProductFamilyResponse({
    required this.availabilityInformation,
    required this.costInformation,
    required this.description,
    required this.displayName,
    required this.filterableProperties,
    required this.fulfilledBy,
    required this.hierarchyInformation,
    required this.imageInformation,
    required this.productLines,
    this.resourceProviderDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityInformation': availabilityInformation.toMap(),
      'costInformation': costInformation.toMap(),
      'description': description.toMap(),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(filterableProperties, (value) => value.toMap()),
      'fulfilledBy': fulfilledBy,
      'hierarchyInformation': hierarchyInformation.toMap(),
      'imageInformation': pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(imageInformation, (value) => value.toMap()),
      'productLines': pulumi.Input.encodeList<ProductLineResponse, Map<String, dynamic>>(productLines, (value) => value.toMap()),
      'resourceProviderDetails': ?resourceProviderDetails == null ? null : pulumi.Input.encodeList<ResourceProviderDetailsResponse, Map<String, dynamic>>(resourceProviderDetails!, (value) => value.toMap()),
    };
  }

  factory ProductFamilyResponse.fromMap(Map<String, dynamic> map) {
    return ProductFamilyResponse(
      availabilityInformation: AvailabilityInformationResponse.fromMap((map['availabilityInformation'] as Map).cast<String, dynamic>()),
      costInformation: CostInformationResponse.fromMap((map['costInformation'] as Map).cast<String, dynamic>()),
      description: DescriptionResponse.fromMap((map['description'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      filterableProperties: pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties'], (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      fulfilledBy: map['fulfilledBy'] as String,
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      imageInformation: pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation'], (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      productLines: pulumi.Input.decodeList<ProductLineResponse>(map['productLines'], (value) => ProductLineResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceProviderDetails: map['resourceProviderDetails'] == null ? null : pulumi.Input.decodeList<ResourceProviderDetailsResponse>(map['resourceProviderDetails'], (value) => ResourceProviderDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

