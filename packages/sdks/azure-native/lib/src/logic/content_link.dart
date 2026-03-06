// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content link.
class ContentLink {
  /// The content link URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [ContentLink].
  /// [uri] The content link URI.
  const ContentLink({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory ContentLink.fromMap(Map<String, dynamic> map) {
    return ContentLink(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

