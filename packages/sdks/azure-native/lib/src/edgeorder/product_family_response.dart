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
  /// List of product lines supported in the product family.
  final pulumi.Input<List<ProductLineResponse>> productLines;
  /// Contains details related to resource provider.
  final pulumi.Input<List<ResourceProviderDetailsResponse>>? resourceProviderDetails;

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
  const ProductFamilyResponse({
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
      'availabilityInformation': pulumi.Input.mapInputValue<AvailabilityInformationResponse, Map<String, dynamic>>(availabilityInformation, (value) => value.toMap()),
      'costInformation': pulumi.Input.mapInputValue<CostInformationResponse, Map<String, dynamic>>(costInformation, (value) => value.toMap()),
      'description': pulumi.Input.mapInputValue<DescriptionResponse, Map<String, dynamic>>(description, (value) => value.toMap()),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.mapInputValue<List<FilterablePropertyResponse>, List<Map<String, dynamic>>>(filterableProperties, (value) => pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fulfilledBy': fulfilledBy,
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformationResponse, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'imageInformation': pulumi.Input.mapInputValue<List<ImageInformationResponse>, List<Map<String, dynamic>>>(imageInformation, (value) => pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productLines': pulumi.Input.mapInputValue<List<ProductLineResponse>, List<Map<String, dynamic>>>(productLines, (value) => pulumi.Input.encodeList<ProductLineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceProviderDetails': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderDetailsResponse>, List<Map<String, dynamic>>>(resourceProviderDetails, (value) => pulumi.Input.encodeList<ResourceProviderDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProductFamilyResponse.fromMap(Map<String, dynamic> map) {
    return ProductFamilyResponse(
      availabilityInformation: pulumi.Input.fromValue(AvailabilityInformationResponse.fromMap((map['availabilityInformation']! as Map).cast<String, dynamic>())),
      costInformation: pulumi.Input.fromValue(CostInformationResponse.fromMap((map['costInformation']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(DescriptionResponse.fromMap((map['description']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      filterableProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties']!, (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      fulfilledBy: pulumi.Input.fromValue(map['fulfilledBy'] as String),
      hierarchyInformation: pulumi.Input.fromValue(HierarchyInformationResponse.fromMap((map['hierarchyInformation']! as Map).cast<String, dynamic>())),
      imageInformation: pulumi.Input.fromValue(pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation']!, (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      productLines: pulumi.Input.fromValue(pulumi.Input.decodeList<ProductLineResponse>(map['productLines']!, (value) => ProductLineResponse.fromMap((value as Map).cast<String, dynamic>()))),
      resourceProviderDetails: (() { final guardedValue = map['resourceProviderDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderDetailsResponse>(guardedValue, (value) => ResourceProviderDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
