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
  DatadogOrganizationProperties({
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
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      applicationKey: map['applicationKey'] == null ? null : (map['applicationKey'] as String).input(),
      cspm: map['cspm'] == null ? null : (map['cspm'] as bool).input(),
      enterpriseAppId: map['enterpriseAppId'] == null ? null : (map['enterpriseAppId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      linkingAuthCode: map['linkingAuthCode'] == null ? null : (map['linkingAuthCode'] as String).input(),
      linkingClientId: map['linkingClientId'] == null ? null : (map['linkingClientId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      redirectUri: map['redirectUri'] == null ? null : (map['redirectUri'] as String).input(),
    );
  }
}

