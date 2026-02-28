// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_smart_reply_model_metadata_training_model_type.dart';

/// Metadata for smart reply models.
class GoogleCloudDialogflowV2SmartReplyModelMetadata {
  /// Optional. Type of the smart reply model. If not provided, model_type is used.
  final GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType?
      trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2SmartReplyModelMetadata].
  /// [trainingModelType] Optional. Type of the smart reply model. If not provided, model_type is used.
  GoogleCloudDialogflowV2SmartReplyModelMetadata({
    this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final trainingModelTypeValue = trainingModelType;
    if (trainingModelTypeValue != null) {
      map['trainingModelType'] = trainingModelTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2SmartReplyModelMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SmartReplyModelMetadata(
      trainingModelType: map['trainingModelType'] == null
          ? null
          : GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType
              .fromValue(map['trainingModelType'] as String),
    );
  }
}
