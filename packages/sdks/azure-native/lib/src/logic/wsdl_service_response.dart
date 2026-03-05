// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The WSDL service.
class WsdlServiceResponse {
  /// The list of endpoints' qualified names.
  final pulumi.Input<List<String>>? endpointQualifiedNames;
  /// The qualified name.
  final pulumi.Input<String>? qualifiedName;

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
      endpointQualifiedNames: (() { final guardedValue = map['endpointQualifiedNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      qualifiedName: (() { final guardedValue = map['qualifiedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

