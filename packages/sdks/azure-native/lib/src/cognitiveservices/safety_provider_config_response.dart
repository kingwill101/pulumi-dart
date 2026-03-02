// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the source to which safety providers applies.
class SafetyProviderConfigResponse {
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// Name of RAI Safety Provider.
  final pulumi.Input<String>? safetyProviderName;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;

  /// Creates a new [SafetyProviderConfigResponse].
  /// [blocking] If blocking would occur.
  /// [safetyProviderName] Name of RAI Safety Provider.
  /// [source] Content source to apply the Content Filters.
  SafetyProviderConfigResponse({
    this.blocking,
    this.safetyProviderName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'safetyProviderName': ?safetyProviderName,
      'source': ?source,
    };
  }

  factory SafetyProviderConfigResponse.fromMap(Map<String, dynamic> map) {
    return SafetyProviderConfigResponse(
      blocking: map['blocking'] == null ? null : (map['blocking'] as bool).input(),
      safetyProviderName: map['safetyProviderName'] == null ? null : (map['safetyProviderName'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

