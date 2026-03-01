// ignore_for_file: unused_element, unnecessary_cast


/// Defines an Aml Instance application and its connectivity endpoint URI.
class ComputeInstanceApplicationResponse {
  /// Name of the ComputeInstance application.
  final String? displayName;
  /// Application' endpoint URI.
  final String? endpointUri;

  /// Creates a new [ComputeInstanceApplicationResponse].
  /// [displayName] Name of the ComputeInstance application.
  /// [endpointUri] Application' endpoint URI.
  ComputeInstanceApplicationResponse({
    this.displayName,
    this.endpointUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endpointUri': ?endpointUri,
    };
  }

  factory ComputeInstanceApplicationResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceApplicationResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
    );
  }
}

