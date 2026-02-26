// ignore_for_file: unused_element, unnecessary_cast

/// The text response message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageText {
  /// A collection of text responses.
  final List<String> text;

  GoogleCloudDialogflowCxV3beta1ResponseMessageText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageText(
      text: (map['text'] as List).cast<String>(),
    );
  }
}
