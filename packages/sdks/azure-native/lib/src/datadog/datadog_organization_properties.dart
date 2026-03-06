// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
class DatadogOrganizationProperties {
  /// Api key associated to the Datadog organization.
  final pulumi.Input<String>? apiKey;
  /// Application key associated to the Datadog organization.
  final pulumi.Input<String>? applicationKey;
  /// The configuration which describes the state of cloud security posture management. This collects configuration information for all resources in a subscription and track conformance to industry benchmarks.
  final pulumi.Input<bool>? cspm;
  /// The Id of the Enterprise App used for Single sign on.
  final pulumi.Input<String>? enterpriseAppId;
  /// Id of the Datadog organization.
  final pulumi.Input<String>? id;
  /// The auth code used to linking to an existing Datadog organization.
  final pulumi.Input<String>? linkingAuthCode;
  /// The client_id from an existing in exchange for an auth token to link organization.
  final pulumi.Input<String>? linkingClientId;
  /// Name of the Datadog organization.
  final pulumi.Input<String>? name;
  /// The redirect URI for linking.
  final pulumi.Input<String>? redirectUri;

  /// Creates a new [DatadogOrganizationProperties].
  /// [apiKey] Api key associated to the Datadog organization.
  /// [applicationKey] Application key associated to the Datadog organization.
  /// [cspm] The configuration which describes the state of cloud security posture management. This collects configuration information for all resources in a subscription and track conformance to industry benchmarks.
  /// [enterpriseAppId] The Id of the Enterprise App used for Single sign on.
  /// [id] Id of the Datadog organization.
  /// [linkingAuthCode] The auth code used to linking to an existing Datadog organization.
  /// [linkingClientId] The client_id from an existing in exchange for an auth token to link organization.
  /// [name] Name of the Datadog organization.
  /// [redirectUri] The redirect URI for linking.
  const DatadogOrganizationProperties({
    this.apiKey,
    this.applicationKey,
    this.cspm,
    this.enterpriseAppId,
    this.id,
    this.linkingAuthCode,
    this.linkingClientId,
    this.name,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationKey': ?applicationKey,
      'cspm': ?cspm,
      'enterpriseAppId': ?enterpriseAppId,
      'id': ?id,
      'linkingAuthCode': ?linkingAuthCode,
      'linkingClientId': ?linkingClientId,
      'name': ?name,
      'redirectUri': ?redirectUri,
    };
  }

  factory DatadogOrganizationProperties.fromMap(Map<String, dynamic> map) {
    return DatadogOrganizationProperties(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationKey: (() { final guardedValue = map['applicationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cspm: (() { final guardedValue = map['cspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enterpriseAppId: (() { final guardedValue = map['enterpriseAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkingAuthCode: (() { final guardedValue = map['linkingAuthCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkingClientId: (() { final guardedValue = map['linkingClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

