// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_trace_sampling_config.dart';

/// {@template pulumi_apigee_v1_override_args_doc}
/// The set of arguments for Override.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_override_args_doc}
class OverrideArgs {
  /// ID of the API proxy that will have its trace configuration overridden.
  final pulumi.Input<String>? apiProxy;
  final pulumi.Input<String> environmentId;

  /// ID of the trace configuration override specified as a system-generated UUID.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Trace configuration to override.
  final pulumi.Input<GoogleCloudApigeeV1TraceSamplingConfig>? samplingConfig;

  /// Creates a new [OverrideArgs].
  /// [apiProxy] ID of the API proxy that will have its trace configuration overridden.
  /// [environmentId] Required.
  /// [name] ID of the trace configuration override specified as a system-generated UUID.
  /// [organizationId] Required.
  /// [samplingConfig] Trace configuration to override.
  OverrideArgs({
    String? apiProxy,
    required String environmentId,
    String? name,
    required String organizationId,
    GoogleCloudApigeeV1TraceSamplingConfig? samplingConfig,
  }) : apiProxy = pulumi.Input.asOptionalInput<String>(apiProxy),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       samplingConfig =
           pulumi.Input.asOptionalInput<GoogleCloudApigeeV1TraceSamplingConfig>(
             samplingConfig,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProxy': ?apiProxy,
      'environmentId': environmentId,
      'name': ?name,
      'organizationId': organizationId,
      'samplingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1TraceSamplingConfig,
            Map<String, dynamic>
          >(samplingConfig, (value) => value.toMap()),
    };
  }

  factory OverrideArgs.fromMap(Map<String, dynamic> map) {
    return OverrideArgs(
      apiProxy: map['apiProxy'] == null ? null : map['apiProxy'] as String,
      environmentId: map['environmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      samplingConfig: map['samplingConfig'] == null
          ? null
          : GoogleCloudApigeeV1TraceSamplingConfig.fromMap(
              (map['samplingConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
