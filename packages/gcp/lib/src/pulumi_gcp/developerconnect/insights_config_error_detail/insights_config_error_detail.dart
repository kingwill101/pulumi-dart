// ignore_for_file: unused_element, unnecessary_cast

class InsightsConfigErrorDetail {
  /// (Output)
  /// A message with details about the error.
  final String? detailMessage;

  InsightsConfigErrorDetail({
    this.detailMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailMessageValue = detailMessage;
    if (detailMessageValue != null) {
      map['detailMessage'] = detailMessageValue;
    }
    return map;
  }

  factory InsightsConfigErrorDetail.fromMap(Map<String, dynamic> map) {
    return InsightsConfigErrorDetail(
      detailMessage:
          map['detailMessage'] == null ? null : map['detailMessage'] as String,
    );
  }
}
