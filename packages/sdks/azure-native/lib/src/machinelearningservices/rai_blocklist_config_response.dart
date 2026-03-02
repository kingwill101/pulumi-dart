// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure OpenAI blocklist config.
class RaiBlocklistConfigResponse {
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// Name of ContentFilter.
  final pulumi.Input<String>? blocklistName;

  /// Creates a new [RaiBlocklistConfigResponse].
  /// [blocking] If blocking would occur.
  /// [blocklistName] Name of ContentFilter.
  RaiBlocklistConfigResponse({
    this.blocking,
    this.blocklistName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'blocklistName': ?blocklistName,
    };
  }

  factory RaiBlocklistConfigResponse.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistConfigResponse(
      blocking: map['blocking'] == null ? null : (map['blocking']! as bool).input(),
      blocklistName: map['blocklistName'] == null ? null : (map['blocklistName']! as String).input(),
    );
  }
}

