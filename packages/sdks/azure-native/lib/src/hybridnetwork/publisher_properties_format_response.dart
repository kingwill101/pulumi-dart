// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// publisher properties.
class PublisherPropertiesFormatResponse {
  /// The provisioning state of the publisher resource.
  final pulumi.Input<String> provisioningState;
  /// The publisher scope.
  final pulumi.Input<String>? scope;

  /// Creates a new [PublisherPropertiesFormatResponse].
  /// [provisioningState] The provisioning state of the publisher resource.
  /// [scope] The publisher scope.
  PublisherPropertiesFormatResponse({
    required this.provisioningState,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'scope': ?scope,
    };
  }

  factory PublisherPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return PublisherPropertiesFormatResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
    );
  }
}

