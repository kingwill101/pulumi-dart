// ignore_for_file: unused_element, unnecessary_cast

/// A representation of a Datastore kind.
class GooglePrivacyDlpV2KindExpressionResponse {
  /// The name of the kind.
  final String name;

  GooglePrivacyDlpV2KindExpressionResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GooglePrivacyDlpV2KindExpressionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KindExpressionResponse(
      name: map['name'] as String,
    );
  }
}
