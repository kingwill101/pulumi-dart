// ignore_for_file: unused_element, unnecessary_cast


/// The service with name and endpoint names
class WsdlService {
  /// List of the endpoints' qualified names
  final List<String>? endpointQualifiedNames;
  /// The service's qualified name
  final String qualifiedName;

  /// Creates a new [WsdlService].
  /// [endpointQualifiedNames] List of the endpoints' qualified names
  /// [qualifiedName] The service's qualified name
  WsdlService({
    this.endpointQualifiedNames,
    required this.qualifiedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointQualifiedNames': ?endpointQualifiedNames,
      'qualifiedName': qualifiedName,
    };
  }

  factory WsdlService.fromMap(Map<String, dynamic> map) {
    return WsdlService(
      endpointQualifiedNames: map['endpointQualifiedNames'] == null ? null : (map['endpointQualifiedNames'] as List).cast<String>(),
      qualifiedName: map['qualifiedName'] as String,
    );
  }
}

