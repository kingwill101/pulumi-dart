// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'build_config_response2.dart';
import 'event_trigger_response3.dart';
import 'google_cloud_functions_v2alpha_state_message_response.dart';
import 'service_config_response2.dart';

/// Result data returned by getFunction.
class GetFunctionResult3 {
  /// Describes the Build step of the function that builds a container from the given source.
  final BuildConfigResponse2 buildConfig;

  /// User-provided description of a function.
  final String description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  final String environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final EventTriggerResponse3 eventTrigger;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String kmsKeyName;

  /// Labels associated with this Cloud Function.
  final Map<String, String> labels;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final String name;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final ServiceConfigResponse2 serviceConfig;

  /// State of the function.
  final String state;

  /// State Messages for this Cloud Function.
  final List<GoogleCloudFunctionsV2alphaStateMessageResponse> stateMessages;

  /// The last update timestamp of a Cloud Function.
  final String updateTime;

  /// The deployed url for the function.
  final String url;

  GetFunctionResult3({
    required this.buildConfig,
    required this.description,
    required this.environment,
    required this.eventTrigger,
    required this.kmsKeyName,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.serviceConfig,
    required this.state,
    required this.stateMessages,
    required this.updateTime,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildConfig'] = buildConfig.toMap();
    map['description'] = description;
    map['environment'] = environment;
    map['eventTrigger'] = eventTrigger.toMap();
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['name'] = name;
    map['satisfiesPzs'] = satisfiesPzs;
    map['serviceConfig'] = serviceConfig.toMap();
    map['state'] = state;
    map['stateMessages'] = Input.encodeList<
        GoogleCloudFunctionsV2alphaStateMessageResponse,
        Map<String, dynamic>>(stateMessages, (value) => value.toMap());
    map['updateTime'] = updateTime;
    map['url'] = url;
    return map;
  }

  factory GetFunctionResult3.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult3(
      buildConfig: BuildConfigResponse2.fromMap(
          (map['buildConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      environment: map['environment'] as String,
      eventTrigger: EventTriggerResponse3.fromMap(
          (map['eventTrigger'] as Map).cast<String, dynamic>()),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      serviceConfig: ServiceConfigResponse2.fromMap(
          (map['serviceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateMessages:
          Input.decodeList<GoogleCloudFunctionsV2alphaStateMessageResponse>(
              map['stateMessages'],
              (value) =>
                  GoogleCloudFunctionsV2alphaStateMessageResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      url: map['url'] as String,
    );
  }
}
