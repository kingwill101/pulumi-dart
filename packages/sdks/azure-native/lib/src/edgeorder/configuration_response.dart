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
  final AvailabilityInformationResponse availabilityInformation;
  /// Different types of child configurations which exist for this configuration, these can be used to populate the child configuration filter.
  final List<String> childConfigurationTypes;
  /// Cost information for the product system.
  final CostInformationResponse costInformation;
  /// Description related to the product system.
  final DescriptionResponse description;
  /// Dimensions of the configuration.
  final DimensionsResponse dimensions;
  /// Display Name for the product system.
  final String displayName;
  /// List of filters supported for a product.
  final List<FilterablePropertyResponse> filterableProperties;
  /// The entity responsible for fulfillment of the item at the given hierarchy level.
  final String fulfilledBy;
  /// Child configurations present for the configuration after applying child configuration filter, grouped by the category name of the child configuration.
  final List<GroupedChildConfigurationsResponse> groupedChildConfigurations;
  /// Hierarchy information of a product.
  final HierarchyInformationResponse hierarchyInformation;
  /// Image information for the product system.
  final List<ImageInformationResponse> imageInformation;
  /// Determining nature of provisioning that the configuration supports.
  final String provisioningSupport;
  /// Specifications of the configuration.
  final List<SpecificationResponse> specifications;
  /// The Term Commitment Durations that are supported for a configuration.
  final List<String> supportedTermCommitmentDurations;

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
      'availabilityInformation': availabilityInformation.toMap(),
      'childConfigurationTypes': childConfigurationTypes,
      'costInformation': costInformation.toMap(),
      'description': description.toMap(),
      'dimensions': dimensions.toMap(),
      'displayName': displayName,
      'filterableProperties': pulumi.Input.encodeList<FilterablePropertyResponse, Map<String, dynamic>>(filterableProperties, (value) => value.toMap()),
      'fulfilledBy': fulfilledBy,
      'groupedChildConfigurations': pulumi.Input.encodeList<GroupedChildConfigurationsResponse, Map<String, dynamic>>(groupedChildConfigurations, (value) => value.toMap()),
      'hierarchyInformation': hierarchyInformation.toMap(),
      'imageInformation': pulumi.Input.encodeList<ImageInformationResponse, Map<String, dynamic>>(imageInformation, (value) => value.toMap()),
      'provisioningSupport': provisioningSupport,
      'specifications': pulumi.Input.encodeList<SpecificationResponse, Map<String, dynamic>>(specifications, (value) => value.toMap()),
      'supportedTermCommitmentDurations': supportedTermCommitmentDurations,
    };
  }

  factory ConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationResponse(
      availabilityInformation: AvailabilityInformationResponse.fromMap((map['availabilityInformation'] as Map).cast<String, dynamic>()),
      childConfigurationTypes: (map['childConfigurationTypes'] as List).cast<String>(),
      costInformation: CostInformationResponse.fromMap((map['costInformation'] as Map).cast<String, dynamic>()),
      description: DescriptionResponse.fromMap((map['description'] as Map).cast<String, dynamic>()),
      dimensions: DimensionsResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      filterableProperties: pulumi.Input.decodeList<FilterablePropertyResponse>(map['filterableProperties'], (value) => FilterablePropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      fulfilledBy: map['fulfilledBy'] as String,
      groupedChildConfigurations: pulumi.Input.decodeList<GroupedChildConfigurationsResponse>(map['groupedChildConfigurations'], (value) => GroupedChildConfigurationsResponse.fromMap((value as Map).cast<String, dynamic>())),
      hierarchyInformation: HierarchyInformationResponse.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
      imageInformation: pulumi.Input.decodeList<ImageInformationResponse>(map['imageInformation'], (value) => ImageInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningSupport: map['provisioningSupport'] as String,
      specifications: pulumi.Input.decodeList<SpecificationResponse>(map['specifications'], (value) => SpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      supportedTermCommitmentDurations: (map['supportedTermCommitmentDurations'] as List).cast<String>(),
    );
  }
}

