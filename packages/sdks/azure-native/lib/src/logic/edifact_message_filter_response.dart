// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact message filter for odata query.
class EdifactMessageFilterResponse {
  /// The message filter type.
  final String messageFilterType;

  /// Creates a new [EdifactMessageFilterResponse].
  /// [messageFilterType] The message filter type.
  EdifactMessageFilterResponse({
    required this.messageFilterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFilterType': messageFilterType,
    };
  }

  factory EdifactMessageFilterResponse.fromMap(Map<String, dynamic> map) {
    return EdifactMessageFilterResponse(
      messageFilterType: map['messageFilterType'] as String,
    );
  }
}

