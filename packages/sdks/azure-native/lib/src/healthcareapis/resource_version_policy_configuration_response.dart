// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for history tracking for FHIR resources.
class ResourceVersionPolicyConfigurationResponse {
  /// The default value for tracking history across all resources.
  final pulumi.Input<String>? default_;
  /// A list of FHIR Resources and their version policy overrides.
  final pulumi.Input<Map<String, String>>? resourceTypeOverrides;

  /// Creates a new [ResourceVersionPolicyConfigurationResponse].
  /// [default_] The default value for tracking history across all resources.
  /// [resourceTypeOverrides] A list of FHIR Resources and their version policy overrides.
  ResourceVersionPolicyConfigurationResponse({
    this.default_,
    this.resourceTypeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'resourceTypeOverrides': ?resourceTypeOverrides,
    };
  }

  factory ResourceVersionPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceVersionPolicyConfigurationResponse(
      default_: map['default'] == null ? null : (map['default']! as String).input(),
      resourceTypeOverrides: map['resourceTypeOverrides'] == null ? null : ((map['resourceTypeOverrides']! as Map).cast<String, String>()).input(),
    );
  }
}

