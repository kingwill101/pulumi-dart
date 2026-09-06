// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the source to which filter applies.
class CustomBlocklistConfig {
  /// If blocking would occur.
  final pulumi.Input<bool?>? blocking;
  /// Name of ContentFilter.
  final pulumi.Input<String?>? blocklistName;
  /// Content source to apply the Content Filters.
  final pulumi.Input<dynamic>? source;

  /// Creates a new [CustomBlocklistConfig].
  /// [blocking] If blocking would occur.
  /// [blocklistName] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  const CustomBlocklistConfig({
    this.blocking,
    this.blocklistName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'blocklistName': ?blocklistName,
      'source': ?source,
    };
  }

  factory CustomBlocklistConfig.fromMap(Map<String, dynamic> map) {
    return CustomBlocklistConfig(
      blocking: (() { final guardedValue = map['blocking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blocklistName: (() { final guardedValue = map['blocklistName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
