// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEndpoint.
class GetEndpointArgs3 {
  /// Endpoint type. Valid values: `iot:CredentialProvider`, `iot:Data`, `iot:Data-ATS`, `iot:Jobs`.
  final Input<String>? endpointType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetEndpointArgs3({
    this.endpointType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointTypeValue = endpointType;
    if (endpointTypeValue != null) {
      map['endpointType'] = endpointTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEndpointArgs3.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs3(
      endpointType: Input.asOptionalInput<String>(map['endpointType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
