// ignore_for_file: unused_element, unnecessary_cast

/// The desired state of the Domain Mapping.
class DomainMappingSpecResponse {
  /// The mode of the certificate.
  final String certificateMode;

  /// If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  final bool forceOverride;

  /// The name of the Knative Route that this DomainMapping applies to. The route must exist.
  final String routeName;

  /// Creates a new [DomainMappingSpecResponse].
  /// [certificateMode] The mode of the certificate.
  /// [forceOverride] If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  /// [routeName] The name of the Knative Route that this DomainMapping applies to. The route must exist.
  DomainMappingSpecResponse({
    required this.certificateMode,
    required this.forceOverride,
    required this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMode': certificateMode,
      'forceOverride': forceOverride,
      'routeName': routeName,
    };
  }

  factory DomainMappingSpecResponse.fromMap(Map<String, dynamic> map) {
    return DomainMappingSpecResponse(
      certificateMode: map['certificateMode'] as String,
      forceOverride: map['forceOverride'] as bool,
      routeName: map['routeName'] as String,
    );
  }
}
