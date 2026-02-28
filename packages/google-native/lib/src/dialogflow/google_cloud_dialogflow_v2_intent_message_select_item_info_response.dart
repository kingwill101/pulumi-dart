// ignore_for_file: unused_element, unnecessary_cast

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse {
  /// A unique key that will be sent back to the agent if this response is given.
  final String key;

  /// Optional. A list of synonyms that can also be used to trigger this item in dialog.
  final List<String> synonyms;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse].
  /// [key] A unique key that will be sent back to the agent if this response is given.
  /// [synonyms] Optional. A list of synonyms that can also be used to trigger this item in dialog.
  GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse({
    required this.key,
    required this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['synonyms'] = synonyms;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse(
      key: map['key'] as String,
      synonyms: (map['synonyms'] as List).cast<String>(),
    );
  }
}
