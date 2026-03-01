// ignore_for_file: unused_element, unnecessary_cast


/// The WSDL service.
class WsdlServiceResponse {
  /// The list of endpoints' qualified names.
  final List<String>? endpointQualifiedNames;
  /// The qualified name.
  final String? qualifiedName;

  /// Creates a new [WsdlServiceResponse].
  /// [endpointQualifiedNames] The list of endpoints' qualified names.
  /// [qualifiedName] The qualified name.
  WsdlServiceResponse({
    this.endpointQualifiedNames,
    this.qualifiedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointQualifiedNames': ?endpointQualifiedNames,
      'qualifiedName': ?qualifiedName,
    };
  }

  factory WsdlServiceResponse.fromMap(Map<String, dynamic> map) {
    return WsdlServiceResponse(
      endpointQualifiedNames: map['endpointQualifiedNames'] == null ? null : (map['endpointQualifiedNames'] as List).cast<String>(),
      qualifiedName: map['qualifiedName'] == null ? null : map['qualifiedName'] as String,
    );
  }
}

