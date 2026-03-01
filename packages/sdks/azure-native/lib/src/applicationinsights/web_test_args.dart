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
  final pulumi.Input<WebTestPropertiesConfiguration>? configuration;
  /// User defined description for this WebTest.
  final pulumi.Input<String>? description;
  /// Is the test actively being monitored.
  final pulumi.Input<bool>? enabled;
  /// Interval in seconds between test runs for this WebTest. Default value is 300.
  final pulumi.Input<int>? frequency;
  /// The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  final pulumi.Input<WebTestKind>? kind;
  /// Resource location
  final pulumi.Input<String>? location;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  final pulumi.Input<List<WebTestGeolocation>> locations;
  /// The collection of request properties
  final pulumi.Input<WebTestPropertiesRequest>? request;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Allow for retries should this WebTest fail.
  final pulumi.Input<bool>? retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  final pulumi.Input<String> syntheticMonitorId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Seconds until this WebTest will timeout and fail. Default value is 30.
  final pulumi.Input<int>? timeout;
  /// The collection of validation rule properties
  final pulumi.Input<WebTestPropertiesValidationRules>? validationRules;
  /// The kind of web test this is, valid choices are ping, multistep and standard.
  final pulumi.Input<WebTestKind> webTestKind;
  /// User defined name if this WebTest.
  final pulumi.Input<String>? webTestName;

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
    pulumi.Output<WebTestPropertiesConfiguration>? configuration,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? frequency,
    pulumi.Output<WebTestKind>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<List<WebTestGeolocation>> locations,
    pulumi.Output<WebTestPropertiesRequest>? request,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? retryEnabled,
    required pulumi.Output<String> syntheticMonitorId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? timeout,
    pulumi.Output<WebTestPropertiesValidationRules>? validationRules,
    required pulumi.Output<WebTestKind> webTestKind,
    pulumi.Output<String>? webTestName,
  }) :
      configuration = pulumi.Input.asOptionalInput<WebTestPropertiesConfiguration>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<int>(frequency),
      kind = pulumi.Input.asOptionalInput<WebTestKind>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asInput<List<WebTestGeolocation>>(locations),
      request = pulumi.Input.asOptionalInput<WebTestPropertiesRequest>(request),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retryEnabled = pulumi.Input.asOptionalInput<bool>(retryEnabled),
      syntheticMonitorId = pulumi.Input.asInput<String>(syntheticMonitorId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      validationRules = pulumi.Input.asOptionalInput<WebTestPropertiesValidationRules>(validationRules),
      webTestKind = pulumi.Input.asInput<WebTestKind>(webTestKind),
      webTestName = pulumi.Input.asOptionalInput<String>(webTestName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'kind': ?pulumi.Input.mapOptionalInputValue<WebTestKind, String>(kind, (value) => value.value),
      'location': ?location,
      'locations': pulumi.Input.mapInputValue<List<WebTestGeolocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<WebTestGeolocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'request': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'retryEnabled': ?retryEnabled,
      'syntheticMonitorId': syntheticMonitorId,
      'tags': ?tags,
      'timeout': ?timeout,
      'validationRules': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesValidationRules, Map<String, dynamic>>(validationRules, (value) => value.toMap()),
      'webTestKind': pulumi.Input.mapInputValue<WebTestKind, String>(webTestKind, (value) => value.value),
      'webTestName': ?webTestName,
    };
  }

  factory WebTestArgs.fromMap(Map<String, dynamic> map) {
    return WebTestArgs(
      configuration: map['configuration'] == null ? null : pulumi.Output.create<WebTestPropertiesConfiguration>(WebTestPropertiesConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<int>(map['frequency'] as int),
      kind: map['kind'] == null ? null : pulumi.Output.create<WebTestKind>(WebTestKind.fromValue(map['kind'] as String)),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locations: pulumi.Output.create<List<WebTestGeolocation>>(pulumi.Input.decodeList<WebTestGeolocation>(map['locations'], (value) => WebTestGeolocation.fromMap((value as Map).cast<String, dynamic>()))),
      request: map['request'] == null ? null : pulumi.Output.create<WebTestPropertiesRequest>(WebTestPropertiesRequest.fromMap((map['request'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retryEnabled: map['retryEnabled'] == null ? null : pulumi.Output.create<bool>(map['retryEnabled'] as bool),
      syntheticMonitorId: pulumi.Output.create<String>(map['syntheticMonitorId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      validationRules: map['validationRules'] == null ? null : pulumi.Output.create<WebTestPropertiesValidationRules>(WebTestPropertiesValidationRules.fromMap((map['validationRules'] as Map).cast<String, dynamic>())),
      webTestKind: pulumi.Output.create<WebTestKind>(WebTestKind.fromValue(map['webTestKind'] as String)),
      webTestName: map['webTestName'] == null ? null : pulumi.Output.create<String>(map['webTestName'] as String),
    );
  }
}

