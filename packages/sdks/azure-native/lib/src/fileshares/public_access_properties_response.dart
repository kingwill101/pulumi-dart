// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of properties for control public access.
class PublicAccessPropertiesResponse {
  /// The allowed set of subnets when access is restricted.
  final pulumi.Input<List<String>>? allowedSubnets;

  /// Creates a new [PublicAccessPropertiesResponse].
  /// [allowedSubnets] The allowed set of subnets when access is restricted.
  PublicAccessPropertiesResponse({
    this.allowedSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?allowedSubnets,
    };
  }

  factory PublicAccessPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PublicAccessPropertiesResponse(
      allowedSubnets: map['allowedSubnets'] == null ? null : ((map['allowedSubnets'] as List).cast<String>()).input(),
    );
  }
}

