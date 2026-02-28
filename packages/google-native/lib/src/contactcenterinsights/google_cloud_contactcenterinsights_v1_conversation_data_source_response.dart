// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_dialogflow_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_gcs_source_response.dart';

/// The conversation source, which is a combination of transcript, audio, and metadata.
class GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse {
  /// The source when the conversation comes from Dialogflow.
  final GoogleCloudContactcenterinsightsV1DialogflowSourceResponse dialogflowSource;
  /// A Cloud Storage location specification for the audio and transcript.
  final GoogleCloudContactcenterinsightsV1GcsSourceResponse gcsSource;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse].
  /// [dialogflowSource] The source when the conversation comes from Dialogflow.
  /// [gcsSource] A Cloud Storage location specification for the audio and transcript.
  GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse({
    required this.dialogflowSource,
    required this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowSource': dialogflowSource.toMap(),
      'gcsSource': gcsSource.toMap(),
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse(
      dialogflowSource: GoogleCloudContactcenterinsightsV1DialogflowSourceResponse.fromMap((map['dialogflowSource'] as Map).cast<String, dynamic>()),
      gcsSource: GoogleCloudContactcenterinsightsV1GcsSourceResponse.fromMap((map['gcsSource'] as Map).cast<String, dynamic>()),
    );
  }
}

