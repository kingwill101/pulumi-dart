// ignore_for_file: unused_element, unnecessary_cast

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTriggerResponse {
  /// The security level for the function.
  final String securityLevel;

  /// The deployed url for the function.
  final String url;

  HttpsTriggerResponse({
    required this.securityLevel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityLevel'] = securityLevel;
    map['url'] = url;
    return map;
  }

  factory HttpsTriggerResponse.fromMap(Map<String, dynamic> map) {
    return HttpsTriggerResponse(
      securityLevel: map['securityLevel'] as String,
      url: map['url'] as String,
    );
  }
}
