// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the source to which filter applies.
class CustomBlocklistConfigResponse {
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// Name of ContentFilter.
  final pulumi.Input<String>? blocklistName;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;

  /// Creates a new [CustomBlocklistConfigResponse].
  /// [blocking] If blocking would occur.
  /// [blocklistName] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  CustomBlocklistConfigResponse({
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

  factory CustomBlocklistConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomBlocklistConfigResponse(
      blocking: map['blocking'] == null ? null : (map['blocking']! as bool).input(),
      blocklistName: map['blocklistName'] == null ? null : (map['blocklistName']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

