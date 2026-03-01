// ignore_for_file: unused_element, unnecessary_cast

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowCxV3beta1TextInputResponse {
  /// The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.
  final String text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TextInputResponse].
  /// [text] The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.
  GoogleCloudDialogflowCxV3beta1TextInputResponse({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDialogflowCxV3beta1TextInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1TextInputResponse(
      text: map['text'] as String,
    );
  }
}
