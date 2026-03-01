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
  final WebActivityAuthentication? authentication;
  /// Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  final dynamic body;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// List of datasets passed to web endpoint.
  final List<DatasetReference>? datasets;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// When set to true, Certificate validation will be disabled.
  final bool? disableCertValidation;
  /// Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  final Map<String, dynamic>? headers;
  /// Timeout for the HTTP request to get a response. Format is in TimeSpan (hh:mm:ss). This value is the timeout to get a response, not the activity timeout. The default value is 00:01:00 (1 minute). The range is from 1 to 10 minutes
  final dynamic httpRequestTimeout;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// List of linked services passed to web endpoint.
  final List<LinkedServiceReference>? linkedServices;
  /// Rest API method for target endpoint.
  final String method;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Option to disable invoking HTTP GET on location given in response header of a HTTP 202 Response. If set true, it stops invoking HTTP GET on http location given in response header. If set false then continues to invoke HTTP GET call on location given in http response headers.
  final bool? turnOffAsync;
  /// Type of activity.
  /// Expected value is 'WebActivity'.
  final String type;
  /// Web activity target endpoint and path. Type: string (or Expression with resultType string).
  final dynamic url;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'body': ?body,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'datasets': ?datasets == null ? null : pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(datasets!, (value) => value.toMap()),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'disableCertValidation': ?disableCertValidation,
      'headers': ?headers,
      'httpRequestTimeout': ?httpRequestTimeout,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'linkedServices': ?linkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(linkedServices!, (value) => value.toMap()),
      'method': method,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'turnOffAsync': ?turnOffAsync,
      'type': type,
      'url': url,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory WebActivity.fromMap(Map<String, dynamic> map) {
    return WebActivity(
      authentication: map['authentication'] == null ? null : WebActivityAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      datasets: map['datasets'] == null ? null : pulumi.Input.decodeList<DatasetReference>(map['datasets'], (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>())),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      disableCertValidation: map['disableCertValidation'] == null ? null : map['disableCertValidation'] as bool,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, dynamic>(),
      httpRequestTimeout: map['httpRequestTimeout'] == null ? null : map['httpRequestTimeout'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      linkedServices: map['linkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReference>(map['linkedServices'], (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>())),
      method: map['method'] as String,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      turnOffAsync: map['turnOffAsync'] == null ? null : map['turnOffAsync'] as bool,
      type: map['type'] as String,
      url: map['url'],
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

