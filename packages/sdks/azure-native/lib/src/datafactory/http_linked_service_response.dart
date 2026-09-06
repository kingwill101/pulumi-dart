// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for an HTTP source.
class HttpLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  final pulumi.Input<dynamic>? authHeaders;
  /// The authentication type to be used to connect to the HTTP server.
  final pulumi.Input<String?>? authenticationType;
  /// Thumbprint of certificate for ClientCertificate authentication. Only valid for on-premises copy. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? certThumbprint;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// Base64 encoded certificate data for ClientCertificate authentication. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? embeddedCertData;
  /// If true, validate the HTTPS server SSL certificate. Default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableServerCertificateValidation;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// Password for Basic, Digest, Windows, or ClientCertificate with EmbeddedCertData authentication.
  final pulumi.Input<dynamic>? password;
  /// Type of linked service.
  /// Expected value is 'HttpServer'.
  final pulumi.Input<String> type;
  /// The base URL of the HTTP endpoint, e.g. https://www.microsoft.com. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// User name for Basic, Digest, or Windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [HttpLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authHeaders] The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  /// [authenticationType] The authentication type to be used to connect to the HTTP server.
  /// [certThumbprint] Thumbprint of certificate for ClientCertificate authentication. Only valid for on-premises copy. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [embeddedCertData] Base64 encoded certificate data for ClientCertificate authentication. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  /// [enableServerCertificateValidation] If true, validate the HTTPS server SSL certificate. Default value is true. Type: boolean (or Expression with resultType boolean).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password for Basic, Digest, Windows, or ClientCertificate with EmbeddedCertData authentication.
  /// [type] Type of linked service.
  /// [url] The base URL of the HTTP endpoint, e.g. https://www.microsoft.com. Type: string (or Expression with resultType string).
  /// [userName] User name for Basic, Digest, or Windows authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const HttpLinkedServiceResponse({
    this.annotations,
    this.authHeaders,
    this.authenticationType,
    this.certThumbprint,
    this.connectVia,
    this.description,
    this.embeddedCertData,
    this.enableServerCertificateValidation,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    required this.url,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authHeaders': ?authHeaders,
      'authenticationType': ?authenticationType,
      'certThumbprint': ?certThumbprint,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'embeddedCertData': ?embeddedCertData,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory HttpLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HttpLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authHeaders: (() { final guardedValue = map['authHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certThumbprint: (() { final guardedValue = map['certThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddedCertData: (() { final guardedValue = map['embeddedCertData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enableServerCertificateValidation: (() { final guardedValue = map['enableServerCertificateValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url']),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
