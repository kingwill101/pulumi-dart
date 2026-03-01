// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_state_configurations_configuration.dart';

/// Result data returned by getStateConfigurations.
class GetStateConfigurationsResult {
  final List<GetStateConfigurationsConfiguration> configurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? resourceGroupId;
  final Map<String, String>? tags;

  /// Creates a new [GetStateConfigurationsResult].
  /// [configurations] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [tags] Optional.
  GetStateConfigurationsResult({
    required this.configurations,
    required this.id,
    required this.ids,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.encodeList<GetStateConfigurationsConfiguration, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetStateConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetStateConfigurationsResult(
      configurations: pulumi.Input.decodeList<GetStateConfigurationsConfiguration>(map['configurations'], (value) => GetStateConfigurationsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

