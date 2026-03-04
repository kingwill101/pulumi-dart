// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Criteria to limit import of WSDL to a subset of the document.
class ApiCreateOrUpdatePropertiesWsdlSelector {
  /// Name of endpoint(port) to import from WSDL
  final pulumi.Input<String>? wsdlEndpointName;

  /// Name of service to import from WSDL
  final pulumi.Input<String>? wsdlServiceName;

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

  factory ApiCreateOrUpdatePropertiesWsdlSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiCreateOrUpdatePropertiesWsdlSelector(
      wsdlEndpointName: (() {
        final guardedValue = map['wsdlEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wsdlServiceName: (() {
        final guardedValue = map['wsdlServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
