// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceEndpoint resources.
class ServiceEndpointState {
  /// Specifies whether the endpoint is enabled. Valid values:
  final pulumi.Input<bool>? endpointEnabled;
  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  final pulumi.Input<String>? endpointType;

  /// Creates a new [ServiceEndpointState].
  /// [endpointEnabled] Specifies whether the endpoint is enabled. Valid values:
  /// [endpointType] Access point type. Value:
  ServiceEndpointState({
    this.endpointEnabled,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointEnabled': ?endpointEnabled,
      'endpointType': ?endpointType,
    };
  }

  factory ServiceEndpointState.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointState(
      endpointEnabled: map['endpointEnabled'] == null ? null : (map['endpointEnabled']! as bool).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
    );
  }
}

