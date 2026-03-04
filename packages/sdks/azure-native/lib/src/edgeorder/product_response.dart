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
  final pulumi.Input<AvailabilityInformationResponse> availabilityInformation;

  /// List of configurations for the product.
  final pulumi.Input<List<ConfigurationResponse>> configurations;

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
      'availabilityInformation':
          pulumi.Input.mapInputValue<
            AvailabilityInformationResponse,
            Map<String, dynamic>
          >(availabilityInformation, (value) => value.toMap()),
      'configurations':
          pulumi.Input.mapInputValue<
            List<ConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            configurations,
            (value) =>
                pulumi.Input.encodeList<
                  ConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'costInformation':
          pulumi.Input.mapInputValue<
            CostInformationResponse,
            Map<String, dynamic>
          >(costInformation, (value) => value.toMap()),
      'description':
          pulumi.Input.mapInputValue<DescriptionResponse, Map<String, dynamic>>(
            description,
            (value) => value.toMap(),
          ),
      'displayName': displayName,
      'filterableProperties':
          pulumi.Input.mapInputValue<
            List<FilterablePropertyResponse>,
            List<Map<String, dynamic>>
          >(
            filterableProperties,
            (value) =>
                pulumi.Input.encodeList<
                  FilterablePropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fulfilledBy': fulfilledBy,
      'hierarchyInformation':
          pulumi.Input.mapInputValue<
            HierarchyInformationResponse,
            Map<String, dynamic>
          >(hierarchyInformation, (value) => value.toMap()),
      'imageInformation':
          pulumi.Input.mapInputValue<
            List<ImageInformationResponse>,
            List<Map<String, dynamic>>
          >(
            imageInformation,
            (value) =>
                pulumi.Input.encodeList<
                  ImageInformationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      availabilityInformation: pulumi.Input.fromValue(
        AvailabilityInformationResponse.fromMap(
          (map['availabilityInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
      configurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ConfigurationResponse>(
          map['configurations']!,
          (value) => ConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      costInformation: pulumi.Input.fromValue(
        CostInformationResponse.fromMap(
          (map['costInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: pulumi.Input.fromValue(
        DescriptionResponse.fromMap(
          (map['description']! as Map).cast<String, dynamic>(),
        ),
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      filterableProperties: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FilterablePropertyResponse>(
          map['filterableProperties']!,
          (value) => FilterablePropertyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      fulfilledBy: pulumi.Input.fromValue(map['fulfilledBy'] as String),
      hierarchyInformation: pulumi.Input.fromValue(
        HierarchyInformationResponse.fromMap(
          (map['hierarchyInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
      imageInformation: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ImageInformationResponse>(
          map['imageInformation']!,
          (value) => ImageInformationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
