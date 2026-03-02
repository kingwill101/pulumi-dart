// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// publisher properties.
class PublisherPropertiesFormat {
  /// The publisher scope.
  final pulumi.Input<String>? scope;

  /// Creates a new [PublisherPropertiesFormat].
  /// [scope] The publisher scope.
  PublisherPropertiesFormat({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory PublisherPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return PublisherPropertiesFormat(
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

