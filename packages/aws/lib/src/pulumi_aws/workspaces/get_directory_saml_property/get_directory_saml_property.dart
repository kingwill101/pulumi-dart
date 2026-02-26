// ignore_for_file: unused_element, unnecessary_cast

class GetDirectorySamlProperty {
  final String relayStateParameterName;
  final String status;
  final String userAccessUrl;

  GetDirectorySamlProperty({
    required this.relayStateParameterName,
    required this.status,
    required this.userAccessUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['relayStateParameterName'] = relayStateParameterName;
    map['status'] = status;
    map['userAccessUrl'] = userAccessUrl;
    return map;
  }

  factory GetDirectorySamlProperty.fromMap(Map<String, dynamic> map) {
    return GetDirectorySamlProperty(
      relayStateParameterName: map['relayStateParameterName'] as String,
      status: map['status'] as String,
      userAccessUrl: map['userAccessUrl'] as String,
    );
  }
}
