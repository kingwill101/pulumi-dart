// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_geolocation.dart';
import 'web_test_kind.dart';
import 'web_test_properties_configuration.dart';
import 'web_test_properties_request.dart';
import 'web_test_properties_validation_rules.dart';

/// {@template pulumi_applicationinsights_web_test_args_doc}
/// The set of arguments for WebTest.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_web_test_args_doc}
class WebTestArgs {
  /// An XML configuration specification for a WebTest.
  final pulumi.Input<WebTestPropertiesConfiguration?>? configuration;
  /// User defined description for this WebTest.
  final pulumi.Input<String?>? description;
  /// Is the test actively being monitored.
  final pulumi.Input<bool?>? enabled;
  /// Interval in seconds between test runs for this WebTest. Default value is 300.
  final pulumi.Input<int?>? frequency;
  /// The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  final pulumi.Input<WebTestKind?>? kind;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  final pulumi.Input<List<WebTestGeolocation>> locations;
  /// The collection of request properties
  final pulumi.Input<WebTestPropertiesRequest?>? request;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Allow for retries should this WebTest fail.
  final pulumi.Input<bool?>? retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  final pulumi.Input<String> syntheticMonitorId;
  /// Resource tags
  final pulumi.Input<Map<String, String>?>? tags;
  /// Seconds until this WebTest will timeout and fail. Default value is 30.
  final pulumi.Input<int?>? timeout;
  /// The collection of validation rule properties
  final pulumi.Input<WebTestPropertiesValidationRules?>? validationRules;
  /// The kind of web test this is, valid choices are ping, multistep and standard.
  final pulumi.Input<WebTestKind> webTestKind;
  /// User defined name if this WebTest.
  final pulumi.Input<String?>? webTestName;

  /// Creates a new [WebTestArgs].
  /// [configuration] An XML configuration specification for a WebTest.
  /// [description] User defined description for this WebTest.
  /// [enabled] Is the test actively being monitored.
  /// [frequency] Interval in seconds between test runs for this WebTest. Default value is 300.
  /// [kind] The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  /// [location] Resource location
  /// [locations] A list of where to physically run the tests from to give global coverage for accessibility of your application.
  /// [request] The collection of request properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retryEnabled] Allow for retries should this WebTest fail.
  /// [syntheticMonitorId] Unique ID of this WebTest. This is typically the same value as the Name field.
  /// [tags] Resource tags
  /// [timeout] Seconds until this WebTest will timeout and fail. Default value is 30.
  /// [validationRules] The collection of validation rule properties
  /// [webTestKind] The kind of web test this is, valid choices are ping, multistep and standard.
  /// [webTestName] User defined name if this WebTest.
  WebTestArgs({
    this.configuration,
    this.description,
    this.enabled,
    pulumi.Input<int?>? frequency,
    pulumi.Input<WebTestKind?>? kind,
    this.location,
    required this.locations,
    this.request,
    required this.resourceGroupName,
    this.retryEnabled,
    required this.syntheticMonitorId,
    this.tags,
    pulumi.Input<int?>? timeout,
    this.validationRules,
    pulumi.Input<WebTestKind>? webTestKind,
    this.webTestName,
  }) : frequency = frequency ?? pulumi.Input.fromValue(300), kind = kind ?? pulumi.Input.fromValue(WebTestKind.fromValue('ping')), timeout = timeout ?? pulumi.Input.fromValue(30), webTestKind = webTestKind ?? pulumi.Input.fromValue(WebTestKind.fromValue('ping'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'kind': ?pulumi.Input.mapOptionalInputValue<WebTestKind, String>(kind, (value) => value.wireValue),
      'location': ?location,
      'locations': pulumi.Input.mapInputValue<List<WebTestGeolocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<WebTestGeolocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'request': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'retryEnabled': ?retryEnabled,
      'syntheticMonitorId': syntheticMonitorId,
      'tags': ?tags,
      'timeout': ?timeout,
      'validationRules': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesValidationRules, Map<String, dynamic>>(validationRules, (value) => value.toMap()),
      'webTestKind': pulumi.Input.mapInputValue<WebTestKind, String>(webTestKind, (value) => value.wireValue),
      'webTestName': ?webTestName,
    };
  }

  factory WebTestArgs.fromMap(Map<String, dynamic> map) {
    return WebTestArgs(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebTestPropertiesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebTestKind.fromValue(guardedValue as String)); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<WebTestGeolocation>(map['locations']!, (value) => WebTestGeolocation.fromMap((value as Map).cast<String, dynamic>()))),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebTestPropertiesRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retryEnabled: (() { final guardedValue = map['retryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syntheticMonitorId: pulumi.Input.fromValue(map['syntheticMonitorId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      validationRules: (() { final guardedValue = map['validationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebTestPropertiesValidationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webTestKind: pulumi.Input.fromValue(WebTestKind.fromValue(map['webTestKind']! as String)),
      webTestName: (() { final guardedValue = map['webTestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
