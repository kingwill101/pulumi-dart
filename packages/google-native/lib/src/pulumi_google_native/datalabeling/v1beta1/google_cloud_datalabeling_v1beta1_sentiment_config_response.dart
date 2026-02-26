// ignore_for_file: unused_element, unnecessary_cast

/// Config for setting up sentiments.
class GoogleCloudDatalabelingV1beta1SentimentConfigResponse {
  /// If set to true, contributors will have the option to select sentiment of the label they selected, to mark it as negative or positive label. Default is false.
  final bool enableLabelSentimentSelection;

  GoogleCloudDatalabelingV1beta1SentimentConfigResponse({
    required this.enableLabelSentimentSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableLabelSentimentSelection'] = enableLabelSentimentSelection;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1SentimentConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1SentimentConfigResponse(
      enableLabelSentimentSelection:
          map['enableLabelSentimentSelection'] as bool,
    );
  }
}
