// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Shopify Service linked service.
class ShopifyLinkedService {
  /// The API access token that can be used to access Shopify’s data. The token won't expire if it is offline mode.
  final pulumi.Input<dynamic>? accessToken;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The endpoint of the Shopify server. (i.e. mystore.myshopify.com)
  final pulumi.Input<dynamic> host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// Type of linked service.
  /// Expected value is 'Shopify'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [ShopifyLinkedService].
  /// [accessToken] The API access token that can be used to access Shopify’s data. The token won't expire if it is offline mode.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The endpoint of the Shopify server. (i.e. mystore.myshopify.com)
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  const ShopifyLinkedService({
    this.accessToken,
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.host,
    this.parameters,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory ShopifyLinkedService.fromMap(Map<String, dynamic> map) {
    return ShopifyLinkedService(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useHostVerification: (() { final guardedValue = map['useHostVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePeerVerification: (() { final guardedValue = map['usePeerVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
