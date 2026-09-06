// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_geolocation_response.dart';
import 'web_test_properties_configuration_response.dart';
import 'web_test_properties_request_response.dart';
import 'web_test_properties_validation_rules_response.dart';

/// Result data returned by getWebTest.
class GetWebTestResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An XML configuration specification for a WebTest.
  final WebTestPropertiesConfigurationResponse? configuration;
  /// User defined description for this WebTest.
  final String? description;
  /// Is the test actively being monitored.
  final bool? enabled;
  /// Interval in seconds between test runs for this WebTest. Default value is 300.
  final int? frequency;
  /// Azure resource Id
  final String? id;
  /// The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  final String? kind;
  /// Resource location
  final String? location;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  final List<WebTestGeolocationResponse>? locations;
  /// Azure resource name
  final String? name;
  /// Current state of this component, whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  final String? provisioningState;
  /// The collection of request properties
  final WebTestPropertiesRequestResponse? request;
  /// Allow for retries should this WebTest fail.
  final bool? retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  final String? syntheticMonitorId;
  /// Resource tags
  final Map<String, String>? tags;
  /// Seconds until this WebTest will timeout and fail. Default value is 30.
  final int? timeout;
  /// Azure resource type
  final String? type;
  /// The collection of validation rule properties
  final WebTestPropertiesValidationRulesResponse? validationRules;
  /// The kind of web test this is, valid choices are ping, multistep and standard.
  final String? webTestKind;
  /// User defined name if this WebTest.
  final String? webTestName;

  /// Creates a new [GetWebTestResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] An XML configuration specification for a WebTest.
  /// [description] User defined description for this WebTest.
  /// [enabled] Is the test actively being monitored.
  /// [frequency] Interval in seconds between test runs for this WebTest. Default value is 300.
  /// [id] Azure resource Id
  /// [kind] The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  /// [location] Resource location
  /// [locations] A list of where to physically run the tests from to give global coverage for accessibility of your application.
  /// [name] Azure resource name
  /// [provisioningState] Current state of this component, whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  /// [request] The collection of request properties
  /// [retryEnabled] Allow for retries should this WebTest fail.
  /// [syntheticMonitorId] Unique ID of this WebTest. This is typically the same value as the Name field.
  /// [tags] Resource tags
  /// [timeout] Seconds until this WebTest will timeout and fail. Default value is 30.
  /// [type] Azure resource type
  /// [validationRules] The collection of validation rule properties
  /// [webTestKind] The kind of web test this is, valid choices are ping, multistep and standard.
  /// [webTestName] User defined name if this WebTest.
  GetWebTestResult({
    this.azureApiVersion,
    this.configuration,
    this.description,
    this.enabled,
    int? frequency,
    this.id,
    String? kind,
    this.location,
    this.locations,
    this.name,
    this.provisioningState,
    this.request,
    this.retryEnabled,
    this.syntheticMonitorId,
    this.tags,
    int? timeout,
    this.type,
    this.validationRules,
    String? webTestKind,
    this.webTestName,
  }) : frequency = frequency ?? 300, kind = kind ?? 'ping', timeout = timeout ?? 30, webTestKind = webTestKind ?? 'ping';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'configuration': ?configuration?.toMap(),
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<WebTestGeolocationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'request': ?request?.toMap(),
      'retryEnabled': ?retryEnabled,
      'syntheticMonitorId': ?syntheticMonitorId,
      'tags': ?tags,
      'timeout': ?timeout,
      'type': ?type,
      'validationRules': ?validationRules?.toMap(),
      'webTestKind': ?webTestKind,
      'webTestName': ?webTestName,
    };
  }

  factory GetWebTestResult.fromMap(Map<String, dynamic> map) {
    return GetWebTestResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return WebTestPropertiesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebTestGeolocationResponse>(guardedValue, (value) => WebTestGeolocationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return WebTestPropertiesRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      retryEnabled: (() { final guardedValue = map['retryEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      syntheticMonitorId: (() { final guardedValue = map['syntheticMonitorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationRules: (() { final guardedValue = map['validationRules']; if (guardedValue == null) return null; return WebTestPropertiesValidationRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      webTestKind: (() { final guardedValue = map['webTestKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webTestName: (() { final guardedValue = map['webTestName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
