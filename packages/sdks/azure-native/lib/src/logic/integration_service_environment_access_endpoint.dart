// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration service environment access endpoint.
class IntegrationServiceEnvironmentAccessEndpoint {
  /// The access endpoint type.
  final pulumi.Input<String>? type;

  /// Creates a new [IntegrationServiceEnvironmentAccessEndpoint].
  /// [type] The access endpoint type.
  IntegrationServiceEnvironmentAccessEndpoint({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory IntegrationServiceEnvironmentAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentAccessEndpoint(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

