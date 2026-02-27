// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rest_api_put_timeouts/rest_api_put_timeouts.dart';

/// The set of arguments for RestApiPut.
class RestApiPutArgs {
  /// PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  final pulumi.Input<String> body;

  /// Whether to rollback the API update when a warning is encountered. The default value is `false`.
  final pulumi.Input<bool>? failOnWarnings;

  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final pulumi.Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the associated REST API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> restApiId;
  final pulumi.Input<RestApiPutTimeouts>? timeouts;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  final pulumi.Input<Map<String, String>>? triggers;

  RestApiPutArgs({
    required this.body,
    this.failOnWarnings,
    this.parameters,
    this.region,
    required this.restApiId,
    this.timeouts,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['body'] = body;
    final failOnWarningsValue = failOnWarnings;
    if (failOnWarningsValue != null) {
      map['failOnWarnings'] = failOnWarningsValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<RestApiPutTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory RestApiPutArgs.fromMap(Map<String, dynamic> map) {
    return RestApiPutArgs(
      body: pulumi.Input.asInput<String>(map['body']),
      failOnWarnings: pulumi.Input.asOptionalInput<bool>(map['failOnWarnings']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
      timeouts:
          pulumi.Input.asOptionalInput<RestApiPutTimeouts>(map['timeouts']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
