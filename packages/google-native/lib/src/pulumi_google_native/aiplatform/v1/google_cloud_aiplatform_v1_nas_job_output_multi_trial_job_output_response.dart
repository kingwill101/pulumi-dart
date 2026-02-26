// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_nas_trial_response.dart';

/// The output of a multi-trial Neural Architecture Search (NAS) jobs.
class GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse {
  /// List of NasTrials that were started as part of search stage.
  final List<GoogleCloudAiplatformV1NasTrialResponse> searchTrials;

  /// List of NasTrials that were started as part of train stage.
  final List<GoogleCloudAiplatformV1NasTrialResponse> trainTrials;

  GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse({
    required this.searchTrials,
    required this.trainTrials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['searchTrials'] = Input.encodeList<
        GoogleCloudAiplatformV1NasTrialResponse,
        Map<String, dynamic>>(searchTrials, (value) => value.toMap());
    map['trainTrials'] = Input.encodeList<
        GoogleCloudAiplatformV1NasTrialResponse,
        Map<String, dynamic>>(trainTrials, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse(
      searchTrials: Input.decodeList<GoogleCloudAiplatformV1NasTrialResponse>(
          map['searchTrials'],
          (value) => GoogleCloudAiplatformV1NasTrialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      trainTrials: Input.decodeList<GoogleCloudAiplatformV1NasTrialResponse>(
          map['trainTrials'],
          (value) => GoogleCloudAiplatformV1NasTrialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
