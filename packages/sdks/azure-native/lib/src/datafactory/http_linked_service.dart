// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for an HTTP source.
class HttpLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  final pulumi.Input<dynamic>? authHeaders;
  /// The authentication type to be used to connect to the HTTP server.
  final pulumi.Input<String>? authenticationType;
  /// Thumbprint of certificate for ClientCertificate authentication. Only valid for on-premises copy. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? certThumbprint;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Base64 encoded certificate data for ClientCertificate authentication. For on-premises copy with ClientCertificate authentication, either CertThumbprint or EmbeddedCertData/Password should be specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? embeddedCertData;
  /// If true, validate the HTTPS server SSL certificate. Default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableServerCertificateValidation;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Password for Basic, Digest, Windows, or ClientCertificate with EmbeddedCertData authentication.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// Type of linked service.
  /// Expected value is 'HttpServer'.
  final pulumi.Input<String> type;
  /// The base URL of the HTTP endpoint, e.g. https://www.microsoft.com. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// User name for Basic, Digest, or Windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [HttpLinkedService].
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
  HttpLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'embeddedCertData': ?embeddedCertData,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory HttpLinkedService.fromMap(Map<String, dynamic> map) {
    return HttpLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authHeaders: map['authHeaders'] == null ? null : (map['authHeaders']!).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      certThumbprint: map['certThumbprint'] == null ? null : (map['certThumbprint']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      embeddedCertData: map['embeddedCertData'] == null ? null : (map['embeddedCertData']!).input(),
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : (map['enableServerCertificateValidation']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

