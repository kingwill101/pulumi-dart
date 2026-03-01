// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact message filter for odata query.
class EdifactMessageFilter {
  /// The message filter type.
  final String messageFilterType;

  /// Creates a new [EdifactMessageFilter].
  /// [messageFilterType] The message filter type.
  EdifactMessageFilter({
    required this.messageFilterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFilterType': messageFilterType,
    };
  }

  factory EdifactMessageFilter.fromMap(Map<String, dynamic> map) {
    return EdifactMessageFilter(
      messageFilterType: map['messageFilterType'] as String,
    );
  }
}

