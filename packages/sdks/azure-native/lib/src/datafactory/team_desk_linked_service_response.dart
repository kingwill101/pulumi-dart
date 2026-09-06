// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for TeamDesk.
class TeamDeskLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The api token for the TeamDesk source.
  final pulumi.Input<dynamic>? apiToken;
  /// The authentication type to use.
  final pulumi.Input<String> authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The password of the TeamDesk source.
  final pulumi.Input<dynamic>? password;
  /// Type of linked service.
  /// Expected value is 'TeamDesk'.
  final pulumi.Input<String> type;
  /// The url to connect TeamDesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The username of the TeamDesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [TeamDeskLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiToken] The api token for the TeamDesk source.
  /// [authenticationType] The authentication type to use.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the TeamDesk source.
  /// [type] Type of linked service.
  /// [url] The url to connect TeamDesk source. Type: string (or Expression with resultType string).
  /// [userName] The username of the TeamDesk source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const TeamDeskLinkedServiceResponse({
    this.annotations,
    this.apiToken,
    required this.authenticationType,
    this.connectVia,
    this.description,
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
      'apiToken': ?apiToken,
      'authenticationType': authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory TeamDeskLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return TeamDeskLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      apiToken: (() { final guardedValue = map['apiToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
