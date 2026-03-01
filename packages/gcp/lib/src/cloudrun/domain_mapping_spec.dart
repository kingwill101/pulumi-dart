// ignore_for_file: unused_element, unnecessary_cast

class DomainMappingSpec {
  /// The mode of the certificate.
  /// Default value is `AUTOMATIC`.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final String? certificateMode;

  /// If set, the mapping will override any mapping set before this spec was set.
  /// It is recommended that the user leaves this empty to receive an error
  /// warning about a potential conflict and only set it once the respective UI
  /// has given such a warning.
  final bool? forceOverride;

  /// The name of the Cloud Run Service that this DomainMapping applies to.
  /// The route must exist.
  final String routeName;

  /// Creates a new [DomainMappingSpec].
  /// [certificateMode] The mode of the certificate.
  /// [forceOverride] If set, the mapping will override any mapping set before this spec was set.
  /// [routeName] The name of the Cloud Run Service that this DomainMapping applies to.
  DomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    required this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMode': ?certificateMode,
      'forceOverride': ?forceOverride,
      'routeName': routeName,
    };
  }

  factory DomainMappingSpec.fromMap(Map<String, dynamic> map) {
    return DomainMappingSpec(
      certificateMode: map['certificateMode'] == null
          ? null
          : map['certificateMode'] as String,
      forceOverride: map['forceOverride'] == null
          ? null
          : map['forceOverride'] as bool,
      routeName: map['routeName'] as String,
    );
  }
}
