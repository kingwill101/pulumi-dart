// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_information_response.dart';
import 'configuration_response.dart';
import 'cost_information_response.dart';
import 'description_response.dart';
import 'filterable_property_response.dart';
import 'hierarchy_information_response.dart';
import 'image_information_response.dart';

/// Represents a product.
class ProductResponse {
  /// Availability information of the product system.
  final AvailabilityInformationResponse availabilityInformation;
  /// List of configurations for the product.
  final List<ConfigurationResponse> configurations;
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

  /// Creates a new [ProductResponse].
  /// [availabilityInformation] Availability information of the product system.
  /// [configurations] List of configurations for the product.
  /// [costInformation] Cost information for the product system.
  /// [description] Description related to the product system.
  /// [displayName] Display Name for the product system.
  /// [filterableProperties] List of filters supported for a product.
  /// [fulfilledBy] The entity responsible for fulfillment of the item at the given hierarchy level.
  /// [hierarchyInformation] Hierarchy information of a product.
  /// [imageInformation] Image information for the product system.
  ProductResponse({
    required this.availabilityInformation,
    required this.configurations,
    required this.costInformation,
    required this.description,
    required this.displayName,
    required this.filterableProperties,
    required this.fulfilledBy,
    required this.hierarchyInformation,
    required this.imageInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityInformation': availabilityInformation.toMap(),
      'configurations': pulumi.Input.encodeList<ConfigurationResponse, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'costInformation': costInformation.toMap(),
      'description': description.toMap(),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(filterableProperties, (value) => value.toMap()),
      'fulfilledBy': fulfilledBy,
      'hierarchyInformation': hierarchyInformation.toMap(),
      'imageInformation': pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(imageInformation, (value) => value.toMap()),
    };
  }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      availabilityInformation: AvailabilityInformationResponse.fromMap((map['availabilityInformation'] as Map).cast<String, dynamic>()),
      configurations: pulumi.Input.decodeList<ConfigurationResponse>(map['configurations'], (value) => ConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      costInformation: CostInformationResponse.fromMap((map['costInformation'] as Map).cast<String, dynamic>()),
      description: DescriptionResponse.fromMap((map['description'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      filterableProperties: pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties'], (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      fulfilledBy: map['fulfilledBy'] as String,
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      imageInformation: pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation'], (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

