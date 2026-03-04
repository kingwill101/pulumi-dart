// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category_information_response.dart';
import 'child_configuration_response.dart';

/// Grouped child configuration object.
class GroupedChildConfigurationsResponse {
  /// Category information.
  final pulumi.Input<CategoryInformationResponse> categoryInformation;

  /// List of child configurations.
  final pulumi.Input<List<ChildConfigurationResponse>> childConfigurations;

  /// Creates a new [GroupedChildConfigurationsResponse].
  /// [categoryInformation] Category information.
  /// [childConfigurations] List of child configurations.
  GroupedChildConfigurationsResponse({
    required this.categoryInformation,
    required this.childConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryInformation':
          pulumi.Input.mapInputValue<
            CategoryInformationResponse,
            Map<String, dynamic>
          >(categoryInformation, (value) => value.toMap()),
      'childConfigurations':
          pulumi.Input.mapInputValue<
            List<ChildConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            childConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ChildConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GroupedChildConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return GroupedChildConfigurationsResponse(
      categoryInformation: pulumi.Input.fromValue(
        CategoryInformationResponse.fromMap(
          (map['categoryInformation']! as Map).cast<String, dynamic>(),
        ),
      ),
      childConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ChildConfigurationResponse>(
          map['childConfigurations']!,
          (value) => ChildConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
