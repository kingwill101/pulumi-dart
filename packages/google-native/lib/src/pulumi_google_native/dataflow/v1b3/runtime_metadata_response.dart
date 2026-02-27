// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'parameter_metadata_response.dart';
import 'sdkinfo_response.dart';

/// RuntimeMetadata describing a runtime environment.
class RuntimeMetadataResponse {
  /// The parameters for the template.
  final List<ParameterMetadataResponse> parameters;

  /// SDK Info for the template.
  final SDKInfoResponse sdkInfo;

  RuntimeMetadataResponse({
    required this.parameters,
    required this.sdkInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] =
        Input.encodeList<ParameterMetadataResponse, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    map['sdkInfo'] = sdkInfo.toMap();
    return map;
  }

  factory RuntimeMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeMetadataResponse(
      parameters: Input.decodeList<ParameterMetadataResponse>(
          map['parameters'],
          (value) => ParameterMetadataResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sdkInfo: SDKInfoResponse.fromMap(
          (map['sdkInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
