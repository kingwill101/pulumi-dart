// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Internal System Metadata, to be used by internal components only.
class SystemMetadataResponse {
  /// Indicates if the Initial system configuration of the Drill is complete or not.
  final pulumi.Input<String> initialConfig;
  /// An indication whether a intrested resource type is present in drill resource.
  final pulumi.Input<List<String>> resourceTypeCategories;

  /// Creates a new [SystemMetadataResponse].
  /// [initialConfig] Indicates if the Initial system configuration of the Drill is complete or not.
  /// [resourceTypeCategories] An indication whether a intrested resource type is present in drill resource.
  const SystemMetadataResponse({
    required this.initialConfig,
    required this.resourceTypeCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialConfig': initialConfig,
      'resourceTypeCategories': resourceTypeCategories,
    };
  }

  factory SystemMetadataResponse.fromMap(Map<String, dynamic> map) {
    return SystemMetadataResponse(
      initialConfig: pulumi.Input.fromValue(map['initialConfig'] as String),
      resourceTypeCategories: pulumi.Input.fromValue((map['resourceTypeCategories'] as List).cast<String>()),
    );
  }
}
