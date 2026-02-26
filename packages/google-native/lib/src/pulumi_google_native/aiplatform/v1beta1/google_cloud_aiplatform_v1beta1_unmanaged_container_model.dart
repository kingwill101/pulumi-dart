// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_model_container_spec.dart';
import 'google_cloud_aiplatform_v1beta1_predict_schemata.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1beta1UnmanagedContainerModel {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final String? artifactUri;

  /// Input only. The specification of the container that is to be used when deploying this Model.
  final GoogleCloudAiplatformV1beta1ModelContainerSpec? containerSpec;

  /// Contains the schemata used in Model's predictions and explanations
  final GoogleCloudAiplatformV1beta1PredictSchemata? predictSchemata;

  GoogleCloudAiplatformV1beta1UnmanagedContainerModel({
    this.artifactUri,
    this.containerSpec,
    this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactUriValue = artifactUri;
    if (artifactUriValue != null) {
      map['artifactUri'] = artifactUriValue;
    }
    final containerSpecValue = containerSpec;
    if (containerSpecValue != null) {
      map['containerSpec'] = containerSpecValue.toMap();
    }
    final predictSchemataValue = predictSchemata;
    if (predictSchemataValue != null) {
      map['predictSchemata'] = predictSchemataValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1UnmanagedContainerModel.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1UnmanagedContainerModel(
      artifactUri:
          map['artifactUri'] == null ? null : map['artifactUri'] as String,
      containerSpec: map['containerSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelContainerSpec.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>()),
      predictSchemata: map['predictSchemata'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PredictSchemata.fromMap(
              (map['predictSchemata'] as Map).cast<String, dynamic>()),
    );
  }
}
