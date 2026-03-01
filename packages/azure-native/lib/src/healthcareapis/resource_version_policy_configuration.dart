// ignore_for_file: unused_element, unnecessary_cast


/// The settings for history tracking for FHIR resources.
class ResourceVersionPolicyConfiguration {
  /// The default value for tracking history across all resources.
  final String? default_;
  /// A list of FHIR Resources and their version policy overrides.
  final Map<String, String>? resourceTypeOverrides;

  /// Creates a new [ResourceVersionPolicyConfiguration].
  /// [default_] The default value for tracking history across all resources.
  /// [resourceTypeOverrides] A list of FHIR Resources and their version policy overrides.
  ResourceVersionPolicyConfiguration({
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
      default_: map['default'] == null ? null : map['default'] as String,
      resourceTypeOverrides: map['resourceTypeOverrides'] == null ? null : (map['resourceTypeOverrides'] as Map).cast<String, String>(),
    );
  }
}

