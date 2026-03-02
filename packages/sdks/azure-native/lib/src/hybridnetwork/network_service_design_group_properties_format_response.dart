// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network service design group properties.
class NetworkServiceDesignGroupPropertiesFormatResponse {
  /// The network service design group description.
  final pulumi.Input<String>? description;
  /// The provisioning state of the network service design groups resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [NetworkServiceDesignGroupPropertiesFormatResponse].
  /// [description] The network service design group description.
  /// [provisioningState] The provisioning state of the network service design groups resource.
  NetworkServiceDesignGroupPropertiesFormatResponse({
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory NetworkServiceDesignGroupPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignGroupPropertiesFormatResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

