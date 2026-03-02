// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperienceEndpoint {
  /// The endpoint of your Amazon Kendra experience.
  final pulumi.Input<String>? endpoint;
  /// The type of endpoint for your Amazon Kendra experience.
  final pulumi.Input<String>? endpointType;

  /// Creates a new [ExperienceEndpoint].
  /// [endpoint] The endpoint of your Amazon Kendra experience.
  /// [endpointType] The type of endpoint for your Amazon Kendra experience.
  ExperienceEndpoint({
    this.endpoint,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
    };
  }

  factory ExperienceEndpoint.fromMap(Map<String, dynamic> map) {
    return ExperienceEndpoint(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
    );
  }
}

