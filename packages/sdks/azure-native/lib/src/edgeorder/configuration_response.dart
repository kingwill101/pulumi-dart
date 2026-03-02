// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_information_response.dart';
import 'cost_information_response.dart';
import 'description_response.dart';
import 'dimensions_response.dart';
import 'filterable_property_response.dart';
import 'grouped_child_configurations_response.dart';
import 'hierarchy_information_response.dart';
import 'image_information_response.dart';
import 'specification_response.dart';

/// Configuration object.
class ConfigurationResponse {
  /// Availability information of the product system.
  final pulumi.Input<AvailabilityInformationResponse> availabilityInformation;
  /// Different types of child configurations which exist for this configuration, these can be used to populate the child configuration filter.
  final pulumi.Input<List<String>> childConfigurationTypes;
  /// Cost information for the product system.
  final pulumi.Input<CostInformationResponse> costInformation;
  /// Description related to the product system.
  final pulumi.Input<DescriptionResponse> description;
  /// Dimensions of the configuration.
  final pulumi.Input<DimensionsResponse> dimensions;
  /// Display Name for the product system.
  final pulumi.Input<String> displayName;
  /// List of filters supported for a product.
  final pulumi.Input<List<FilterablePropertyResponse>> filterableProperties;
  /// The entity responsible for fulfillment of the item at the given hierarchy level.
  final pulumi.Input<String> fulfilledBy;
  /// Child configurations present for the configuration after applying child configuration filter, grouped by the category name of the child configuration.
  final pulumi.Input<List<GroupedChildConfigurationsResponse>> groupedChildConfigurations;
  /// Hierarchy information of a product.
  final pulumi.Input<HierarchyInformationResponse> hierarchyInformation;
  /// Image information for the product system.
  final pulumi.Input<List<ImageInformationResponse>> imageInformation;
  /// Determining nature of provisioning that the configuration supports.
  final pulumi.Input<String> provisioningSupport;
  /// Specifications of the configuration.
  final pulumi.Input<List<SpecificationResponse>> specifications;
  /// The Term Commitment Durations that are supported for a configuration.
  final pulumi.Input<List<String>> supportedTermCommitmentDurations;

  /// Creates a new [ConfigurationResponse].
  /// [availabilityInformation] Availability information of the product system.
  /// [childConfigurationTypes] Different types of child configurations which exist for this configuration, these can be used to populate the child configuration filter.
  /// [costInformation] Cost information for the product system.
  /// [description] Description related to the product system.
  /// [dimensions] Dimensions of the configuration.
  /// [displayName] Display Name for the product system.
  /// [filterableProperties] List of filters supported for a product.
  /// [fulfilledBy] The entity responsible for fulfillment of the item at the given hierarchy level.
  /// [groupedChildConfigurations] Child configurations present for the configuration after applying child configuration filter, grouped by the category name of the child configuration.
  /// [hierarchyInformation] Hierarchy information of a product.
  /// [imageInformation] Image information for the product system.
  /// [provisioningSupport] Determining nature of provisioning that the configuration supports.
  /// [specifications] Specifications of the configuration.
  /// [supportedTermCommitmentDurations] The Term Commitment Durations that are supported for a configuration.
  ConfigurationResponse({
    required this.availabilityInformation,
    required this.childConfigurationTypes,
    required this.costInformation,
    required this.description,
    required this.dimensions,
    required this.displayName,
    required this.filterableProperties,
    required this.fulfilledBy,
    required this.groupedChildConfigurations,
    required this.hierarchyInformation,
    required this.imageInformation,
    required this.provisioningSupport,
    required this.specifications,
    required this.supportedTermCommitmentDurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityInformation': pulumi.Input.mapInputValue<AvailabilityInformationResponse, Map<String, dynamic>>(availabilityInformation, (value) => value.toMap()),
      'childConfigurationTypes': childConfigurationTypes,
      'costInformation': pulumi.Input.mapInputValue<CostInformationResponse, Map<String, dynamic>>(costInformation, (value) => value.toMap()),
      'description': pulumi.Input.mapInputValue<DescriptionResponse, Map<String, dynamic>>(description, (value) => value.toMap()),
      'dimensions': pulumi.Input.mapInputValue<DimensionsResponse, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.mapInputValue<List<FilterablePropertyResponse>, List<Map<String, dynamic>>>(filterableProperties, (value) => pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fulfilledBy': fulfilledBy,
      'groupedChildConfigurations': pulumi.Input.mapInputValue<List<GroupedChildConfigurationsResponse>, List<Map<String, dynamic>>>(groupedChildConfigurations, (value) => pulumi.Input.encodeList<GroupedChildConfigurationsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformationResponse, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
      'imageInformation': pulumi.Input.mapInputValue<List<ImageInformationResponse>, List<Map<String, dynamic>>>(imageInformation, (value) => pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningSupport': provisioningSupport,
      'specifications': pulumi.Input.mapInputValue<List<SpecificationResponse>, List<Map<String, dynamic>>>(specifications, (value) => pulumi.Input.encodeList<SpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedTermCommitmentDurations': supportedTermCommitmentDurations,
    };
  }

  factory ConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationResponse(
      availabilityInformation: (AvailabilityInformationResponse.fromMap((map['availabilityInformation'] as Map).cast<String, dynamic>())).input(),
      childConfigurationTypes: ((map['childConfigurationTypes'] as List).cast<String>()).input(),
      costInformation: (CostInformationResponse.fromMap((map['costInformation'] as Map).cast<String, dynamic>())).input(),
      description: (DescriptionResponse.fromMap((map['description'] as Map).cast<String, dynamic>())).input(),
      dimensions: (DimensionsResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      filterableProperties: (pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties'], (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fulfilledBy: (map['fulfilledBy'] as String).input(),
      groupedChildConfigurations: (pulumi.Input.decodeList<GroupedChildConfigurationsResponse>(map['groupedChildConfigurations'], (value) => GroupedChildConfigurationsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hierarchyInformation: (HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
      imageInformation: (pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation'], (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningSupport: (map['provisioningSupport'] as String).input(),
      specifications: (pulumi.Input.decodeList<SpecificationResponse>(map['specifications'], (value) => SpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      supportedTermCommitmentDurations: ((map['supportedTermCommitmentDurations'] as List).cast<String>()).input(),
    );
  }
}

