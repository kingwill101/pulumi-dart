// ignore_for_file: unused_element, unnecessary_cast


/// Criteria to limit import of WSDL to a subset of the document.
class ApiCreateOrUpdatePropertiesWsdlSelector {
  /// Name of endpoint(port) to import from WSDL
  final String? wsdlEndpointName;
  /// Name of service to import from WSDL
  final String? wsdlServiceName;

  /// Creates a new [ApiCreateOrUpdatePropertiesWsdlSelector].
  /// [wsdlEndpointName] Name of endpoint(port) to import from WSDL
  /// [wsdlServiceName] Name of service to import from WSDL
  ApiCreateOrUpdatePropertiesWsdlSelector({
    this.wsdlEndpointName,
    this.wsdlServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wsdlEndpointName': ?wsdlEndpointName,
      'wsdlServiceName': ?wsdlServiceName,
    };
  }

  factory ApiCreateOrUpdatePropertiesWsdlSelector.fromMap(Map<String, dynamic> map) {
    return ApiCreateOrUpdatePropertiesWsdlSelector(
      wsdlEndpointName: map['wsdlEndpointName'] == null ? null : map['wsdlEndpointName'] as String,
      wsdlServiceName: map['wsdlServiceName'] == null ? null : map['wsdlServiceName'] as String,
    );
  }
}

