// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_dialogflow_source.dart';
import 'google_cloud_contactcenterinsights_v1_gcs_source.dart';

/// The conversation source, which is a combination of transcript, audio, and metadata.
class GoogleCloudContactcenterinsightsV1ConversationDataSource {
  /// The source when the conversation comes from Dialogflow.
  final GoogleCloudContactcenterinsightsV1DialogflowSource? dialogflowSource;

  /// A Cloud Storage location specification for the audio and transcript.
  final GoogleCloudContactcenterinsightsV1GcsSource? gcsSource;

  GoogleCloudContactcenterinsightsV1ConversationDataSource({
    this.dialogflowSource,
    this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dialogflowSourceValue = dialogflowSource;
    if (dialogflowSourceValue != null) {
      map['dialogflowSource'] = dialogflowSourceValue.toMap();
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationDataSource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationDataSource(
      dialogflowSource: map['dialogflowSource'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1DialogflowSource.fromMap(
              (map['dialogflowSource'] as Map).cast<String, dynamic>()),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
    );
  }
}
