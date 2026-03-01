// ignore_for_file: unused_element, unnecessary_cast


/// The X12 message filter for odata query.
class X12MessageFilter {
  /// The message filter type.
  final String messageFilterType;

  /// Creates a new [X12MessageFilter].
  /// [messageFilterType] The message filter type.
  X12MessageFilter({
    required this.messageFilterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFilterType': messageFilterType,
    };
  }

  factory X12MessageFilter.fromMap(Map<String, dynamic> map) {
    return X12MessageFilter(
      messageFilterType: map['messageFilterType'] as String,
    );
  }
}

