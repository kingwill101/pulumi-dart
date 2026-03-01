// ignore_for_file: unused_element, unnecessary_cast


class ListNotebookKeysResultResponse {
  final String primaryAccessKey;
  final String secondaryAccessKey;

  /// Creates a new [ListNotebookKeysResultResponse].
  /// [primaryAccessKey] Required.
  /// [secondaryAccessKey] Required.
  ListNotebookKeysResultResponse({
    required this.primaryAccessKey,
    required this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryAccessKey': primaryAccessKey,
      'secondaryAccessKey': secondaryAccessKey,
    };
  }

  factory ListNotebookKeysResultResponse.fromMap(Map<String, dynamic> map) {
    return ListNotebookKeysResultResponse(
      primaryAccessKey: map['primaryAccessKey'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
    );
  }
}

