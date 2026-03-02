// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_information_response.dart';
import 'cost_information_response.dart';
import 'description_response.dart';
import 'filterable_property_response.dart';
import 'hierarchy_information_response.dart';
import 'image_information_response.dart';
import 'product_response.dart';

/// Product line.
class ProductLineResponse {
  /// Availability information of the product system.
  final pulumi.Input<AvailabilityInformationResponse> availabilityInformation;
  /// Cost information for the product system.
  final pulumi.Input<CostInformationResponse> costInformation;
  /// Description related to the product system.
  final pulumi.Input<DescriptionResponse> description;
  /// Display Name for the product system.
  final pulumi.Input<String> displayName;
  /// List of filters supported for a product.
  final pulumi.Input<List<FilterablePropertyResponse>> filterableProperties;
  /// The entity responsible for fulfillment of the item at the given hierarchy level.
  final pulumi.Input<String> fulfilledBy;
  /// Hierarchy information of a product.
  final pulumi.Input<HierarchyInformationResponse> hierarchyInformation;
  /// Image information for the product system.
  final pulumi.Input<List<ImageInformationResponse>> imageInformation;
  /// List of products in the product line.
  final pulumi.Input<List<ProductResponse>> products;

  /// Creates a new [ProductLineResponse].
  /// [availabilityInformation] Availability information of the product system.
  /// [costInformation] Cost information for the product system.
  /// [description] Description related to the product system.
  /// [displayName] Display Name for the product system.
  /// [filterableProperties] List of filters supported for a product.
  /// [fulfilledBy] The entity responsible for fulfillment of the item at the given hierarchy level.
  /// [hierarchyInformation] Hierarchy information of a product.
  /// [imageInformation] Image information for the product system.
  /// [products] List of products in the product line.
  ProductLineResponse({
    required this.availabilityInformation,
    required this.costInformation,
    required this.description,
    required this.displayName,
    required this.filterableProperties,
    required this.fulfilledBy,
    required this.hierarchyInformation,
    required this.imageInformation,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityInformation': pulumi.Input.mapInputValue<AvailabilityInformationResponse, Map<String, dynamic>>(availabilityInformation, (value) => value.toMap()),
      'costInformation': pulumi.Input.mapInputValue<CostInformationResponse, Map<String, dynamic>>(costInformation, (value) => value.toMap()),
      'description': pulumi.Input.mapInputValue<DescriptionResponse, Map<String, dynamic>>(description, (value) => value.toMap()),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.mapInputValue<List<FilterablePropertyResponse>, List<Map<String, dynamic>>>(filterableProperties, (value) => pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fulfilledBy': fulfilledBy,
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformationResponse, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'imageInformation': pulumi.Input.mapInputValue<List<ImageInformationResponse>, List<Map<String, dynamic>>>(imageInformation, (value) => pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'products': pulumi.Input.mapInputValue<List<ProductResponse>, List<Map<String, dynamic>>>(products, (value) => pulumi.Input.encodeList<ProductResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProductLineResponse.fromMap(Map<String, dynamic> map) {
    return ProductLineResponse(
      availabilityInformation: (AvailabilityInformationResponse.fromMap((map['availabilityInformation'] as Map).cast<String, dynamic>())).input(),
      costInformation: (CostInformationResponse.fromMap((map['costInformation'] as Map).cast<String, dynamic>())).input(),
      description: (DescriptionResponse.fromMap((map['description'] as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      filterableProperties: (pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties'], (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fulfilledBy: (map['fulfilledBy'] as String).input(),
      hierarchyInformation: (HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
      imageInformation: (pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation'], (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      products: (pulumi.Input.decodeList<ProductResponse>(map['products'], (value) => ProductResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

