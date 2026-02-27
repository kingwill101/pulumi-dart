// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_trace_sampling_config.dart';

/// The set of arguments for Override.
class OverrideArgs {
  /// ID of the API proxy that will have its trace configuration overridden.
  final pulumi.Input<String>? apiProxy;
  final pulumi.Input<String> environmentId;

  /// ID of the trace configuration override specified as a system-generated UUID.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Trace configuration to override.
  final pulumi.Input<GoogleCloudApigeeV1TraceSamplingConfig>? samplingConfig;

  OverrideArgs({
    this.apiProxy,
    required this.environmentId,
    this.name,
    required this.organizationId,
    this.samplingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiProxyValue = apiProxy;
    if (apiProxyValue != null) {
      map['apiProxy'] = apiProxyValue;
    }
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final samplingConfigValue = samplingConfig;
    if (samplingConfigValue != null) {
      map['samplingConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1TraceSamplingConfig,
          Map<String, dynamic>>(samplingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory OverrideArgs.fromMap(Map<String, dynamic> map) {
    return OverrideArgs(
      apiProxy: pulumi.Input.asOptionalInput<String>(map['apiProxy']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      samplingConfig:
          pulumi.Input.asOptionalInput<GoogleCloudApigeeV1TraceSamplingConfig>(
              map['samplingConfig']),
    );
  }
}
