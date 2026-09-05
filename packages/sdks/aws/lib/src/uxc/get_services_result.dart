// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServices.
class GetServicesResult {
  /// List of AWS service identifiers available in UXC.
  final List<String>? services;

  /// Creates a new [GetServicesResult].
  /// [services] List of AWS service identifiers available in UXC.
  const GetServicesResult({
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': ?services,
    };
  }

  factory GetServicesResult.fromMap(Map<String, dynamic> map) {
    return GetServicesResult(
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
