// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'dataset_reference.dart';
import 'integration_runtime_reference.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';
import 'web_activity_authentication.dart';

/// Web activity.
class WebActivity {
  /// Authentication method used for calling the endpoint.
  final pulumi.Input<WebActivityAuthentication>? authentication;
  /// Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? body;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// List of datasets passed to web endpoint.
  final pulumi.Input<List<DatasetReference>>? datasets;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// When set to true, Certificate validation will be disabled.
  final pulumi.Input<bool>? disableCertValidation;
  /// Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  final pulumi.Input<Map<String, dynamic>>? headers;
  /// Timeout for the HTTP request to get a response. Format is in TimeSpan (hh:mm:ss). This value is the timeout to get a response, not the activity timeout. The default value is 00:01:00 (1 minute). The range is from 1 to 10 minutes
  final pulumi.Input<dynamic>? httpRequestTimeout;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// List of linked services passed to web endpoint.
  final pulumi.Input<List<LinkedServiceReference>>? linkedServices;
  /// Rest API method for target endpoint.
  final pulumi.Input<String> method;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Option to disable invoking HTTP GET on location given in response header of a HTTP 202 Response. If set true, it stops invoking HTTP GET on http location given in response header. If set false then continues to invoke HTTP GET call on location given in http response headers.
  final pulumi.Input<bool>? turnOffAsync;
  /// Type of activity.
  /// Expected value is 'WebActivity'.
  final pulumi.Input<String> type;
  /// Web activity target endpoint and path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [WebActivity].
  /// [authentication] Authentication method used for calling the endpoint.
  /// [body] Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [datasets] List of datasets passed to web endpoint.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [disableCertValidation] When set to true, Certificate validation will be disabled.
  /// [headers] Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  /// [httpRequestTimeout] Timeout for the HTTP request to get a response. Format is in TimeSpan (hh:mm:ss). This value is the timeout to get a response, not the activity timeout. The default value is 00:01:00 (1 minute). The range is from 1 to 10 minutes
  /// [linkedServiceName] Linked service reference.
  /// [linkedServices] List of linked services passed to web endpoint.
  /// [method] Rest API method for target endpoint.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [turnOffAsync] Option to disable invoking HTTP GET on location given in response header of a HTTP 202 Response. If set true, it stops invoking HTTP GET on http location given in response header. If set false then continues to invoke HTTP GET call on location given in http response headers.
  /// [type] Type of activity.
  /// [url] Web activity target endpoint and path. Type: string (or Expression with resultType string).
  /// [userProperties] Activity user properties.
  WebActivity({
    this.authentication,
    this.body,
    this.connectVia,
    this.datasets,
    this.dependsOn,
    this.description,
    this.disableCertValidation,
    this.headers,
    this.httpRequestTimeout,
    this.linkedServiceName,
    this.linkedServices,
    required this.method,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    this.turnOffAsync,
    required this.type,
    required this.url,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<WebActivityAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'body': ?body,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DatasetReference>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'disableCertValidation': ?disableCertValidation,
      'headers': ?headers,
      'httpRequestTimeout': ?httpRequestTimeout,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'linkedServices': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReference>, List<Map<String, dynamic>>>(linkedServices, (value) => pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': method,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'turnOffAsync': ?turnOffAsync,
      'type': type,
      'url': url,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebActivity.fromMap(Map<String, dynamic> map) {
    return WebActivity(
      authentication: map['authentication'] == null ? null : (WebActivityAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      body: map['body'] == null ? null : (map['body']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<DatasetReference>(map['datasets']!, (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableCertValidation: map['disableCertValidation'] == null ? null : (map['disableCertValidation']! as bool).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as Map).cast<String, dynamic>()).input(),
      httpRequestTimeout: map['httpRequestTimeout'] == null ? null : (map['httpRequestTimeout']!).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      linkedServices: map['linkedServices'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReference>(map['linkedServices']!, (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      method: (map['method'] as String).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      turnOffAsync: map['turnOffAsync'] == null ? null : (map['turnOffAsync']! as bool).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

