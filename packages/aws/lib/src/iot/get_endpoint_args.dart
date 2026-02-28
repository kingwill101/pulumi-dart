// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_endpoint_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_iot_get_endpoint_get_endpoint_args_doc}
class GetEndpointArgs {
  /// Endpoint type. Valid values: `iot:CredentialProvider`, `iot:Data`, `iot:Data-ATS`, `iot:Jobs`.
  final pulumi.Input<String>? endpointType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEndpointArgs].
  /// [endpointType] Endpoint type. Valid values: `iot:CredentialProvider`, `iot:Data`, `iot:Data-ATS`, `iot:Jobs`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEndpointArgs({
    String? endpointType,
    String? region,
  })  : endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointType:
          map['endpointType'] == null ? null : map['endpointType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
