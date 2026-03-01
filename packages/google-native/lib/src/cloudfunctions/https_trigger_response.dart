// ignore_for_file: unused_element, unnecessary_cast

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTriggerResponse {
  /// The security level for the function.
  final String securityLevel;

  /// The deployed url for the function.
  final String url;

  /// Creates a new [HttpsTriggerResponse].
  /// [securityLevel] The security level for the function.
  /// [url] The deployed url for the function.
  HttpsTriggerResponse({required this.securityLevel, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'securityLevel': securityLevel, 'url': url};
  }

  factory HttpsTriggerResponse.fromMap(Map<String, dynamic> map) {
    return HttpsTriggerResponse(
      securityLevel: map['securityLevel'] as String,
      url: map['url'] as String,
    );
  }
}
