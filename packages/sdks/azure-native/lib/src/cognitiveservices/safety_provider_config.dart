// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the source to which safety providers applies.
class SafetyProviderConfig {
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// Name of RAI Safety Provider.
  final pulumi.Input<String>? safetyProviderName;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;

  /// Creates a new [SafetyProviderConfig].
  /// [blocking] If blocking would occur.
  /// [safetyProviderName] Name of RAI Safety Provider.
  /// [source] Content source to apply the Content Filters.
  SafetyProviderConfig({
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

  factory SafetyProviderConfig.fromMap(Map<String, dynamic> map) {
    return SafetyProviderConfig(
      blocking: (() { final guardedValue = map['blocking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      safetyProviderName: (() { final guardedValue = map['safetyProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

