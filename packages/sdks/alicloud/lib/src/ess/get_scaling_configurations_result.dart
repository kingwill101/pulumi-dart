// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_configurations_configuration.dart';

/// Result data returned by getScalingConfigurations.
class GetScalingConfigurationsResult {
  /// A list of scaling rules. Each element contains the following attributes:
  final List<GetScalingConfigurationsConfiguration> configurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of scaling configuration ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of scaling configuration names.
  final List<String> names;
  final String? outputFile;
  /// ID of the scaling group.
  final String? scalingGroupId;

  /// Creates a new [GetScalingConfigurationsResult].
  /// [configurations] A list of scaling rules. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of scaling configuration ids.
  /// [nameRegex] Optional.
  /// [names] A list of scaling configuration names.
  /// [outputFile] Optional.
  /// [scalingGroupId] ID of the scaling group.
  GetScalingConfigurationsResult({
    required this.configurations,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.encodeList<GetScalingConfigurationsConfiguration, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetScalingConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsResult(
      configurations: pulumi.Input.decodeList<GetScalingConfigurationsConfiguration>(map['configurations'], (value) => GetScalingConfigurationsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      scalingGroupId: map['scalingGroupId'] == null ? null : map['scalingGroupId'] as String,
    );
  }
}

