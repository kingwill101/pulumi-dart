// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for SAP ERP Central Component(SAP ECC).
class SapEccLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Either encryptedCredential or username/password must be provided. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// The password for Basic authentication.
  final pulumi.Input<dynamic>? password;
  /// Type of linked service.
  /// Expected value is 'SapEcc'.
  final pulumi.Input<String> type;
  /// The URL of SAP ECC OData API. For example, '[https://hostname:port/sap/opu/odata/sap/servicename/]'. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The username for Basic authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SapEccLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Either encryptedCredential or username/password must be provided. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password for Basic authentication.
  /// [type] Type of linked service.
  /// [url] The URL of SAP ECC OData API. For example, '[https://hostname:port/sap/opu/odata/sap/servicename/]'. Type: string (or Expression with resultType string).
  /// [username] The username for Basic authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const SapEccLinkedService({
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    required this.url,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'type': type,
      'url': url,
      'username': ?username,
      'version': ?version,
    };
  }

  factory SapEccLinkedService.fromMap(Map<String, dynamic> map) {
    return SapEccLinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url']),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
