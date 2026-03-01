// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_put_timeouts.dart';

/// Input properties used for looking up and filtering RestApiPut resources.
class RestApiPutState {
  /// PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  final pulumi.Input<String>? body;
  /// Whether to rollback the API update when a warning is encountered. The default value is `false`.
  final pulumi.Input<bool>? failOnWarnings;
  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the associated REST API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? restApiId;
  final pulumi.Input<RestApiPutTimeouts>? timeouts;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RestApiPutState].
  /// [body] PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  /// [failOnWarnings] Whether to rollback the API update when a warning is encountered. The default value is `false`.
  /// [parameters] Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] Identifier of the associated REST API.
  /// [timeouts] Optional.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  RestApiPutState({
    pulumi.Output<String>? body,
    pulumi.Output<bool>? failOnWarnings,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApiId,
    pulumi.Output<RestApiPutTimeouts>? timeouts,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      failOnWarnings = pulumi.Input.asOptionalInput<bool>(failOnWarnings),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asOptionalInput<String>(restApiId),
      timeouts = pulumi.Input.asOptionalInput<RestApiPutTimeouts>(timeouts),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'failOnWarnings': ?failOnWarnings,
      'parameters': ?parameters,
      'region': ?region,
      'restApiId': ?restApiId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RestApiPutTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'triggers': ?triggers,
    };
  }

  factory RestApiPutState.fromMap(Map<String, dynamic> map) {
    return RestApiPutState(
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      failOnWarnings: map['failOnWarnings'] == null ? null : pulumi.Output.create<bool>(map['failOnWarnings'] as bool),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: map['restApiId'] == null ? null : pulumi.Output.create<String>(map['restApiId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RestApiPutTimeouts>(RestApiPutTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

