// ignore_for_file: unused_element, unnecessary_cast


/// The text response message.
class GoogleCloudDialogflowCxV3ResponseMessageText {
  /// A collection of text responses.
  final List<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageText].
  /// [text] A collection of text responses.
  GoogleCloudDialogflowCxV3ResponseMessageText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageText.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageText(
      text: (map['text'] as List).cast<String>(),
    );
  }
}

