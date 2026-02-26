// ignore_for_file: unused_element, unnecessary_cast

class ExperienceEndpoint {
  /// The endpoint of your Amazon Kendra experience.
  final String? endpoint;

  /// The type of endpoint for your Amazon Kendra experience.
  final String? endpointType;

  ExperienceEndpoint({
    this.endpoint,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    final endpointTypeValue = endpointType;
    if (endpointTypeValue != null) {
      map['endpointType'] = endpointTypeValue;
    }
    return map;
  }

  factory ExperienceEndpoint.fromMap(Map<String, dynamic> map) {
    return ExperienceEndpoint(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      endpointType:
          map['endpointType'] == null ? null : map['endpointType'] as String,
    );
  }
}
