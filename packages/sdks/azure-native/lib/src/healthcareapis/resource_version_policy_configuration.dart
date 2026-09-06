// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for history tracking for FHIR resources.
class ResourceVersionPolicyConfiguration {
  /// The default value for tracking history across all resources.
  final pulumi.Input<dynamic>? default_;
  /// A list of FHIR Resources and their version policy overrides.
  final pulumi.Input<Map<String, dynamic>?>? resourceTypeOverrides;

  /// Creates a new [ResourceVersionPolicyConfiguration].
  /// [default_] The default value for tracking history across all resources.
  /// [resourceTypeOverrides] A list of FHIR Resources and their version policy overrides.
  const ResourceVersionPolicyConfiguration({
    this.default_,
    this.resourceTypeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'resourceTypeOverrides': ?resourceTypeOverrides,
    };
  }

  factory ResourceVersionPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceVersionPolicyConfiguration(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceTypeOverrides: (() { final guardedValue = map['resourceTypeOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
