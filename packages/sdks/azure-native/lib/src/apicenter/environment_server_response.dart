// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server information of the environment.
class EnvironmentServerResponse {
  /// The location of the management portal
  final pulumi.Input<List<String>>? managementPortalUri;
  /// Type of the server that represents the environment.
  final pulumi.Input<String>? type;

  /// Creates a new [EnvironmentServerResponse].
  /// [managementPortalUri] The location of the management portal
  /// [type] Type of the server that represents the environment.
  EnvironmentServerResponse({
    this.managementPortalUri,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementPortalUri': ?managementPortalUri,
      'type': ?type,
    };
  }

  factory EnvironmentServerResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentServerResponse(
      managementPortalUri: map['managementPortalUri'] == null ? null : ((map['managementPortalUri']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

