// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rest_api_put_timeouts/rest_api_put_timeouts.dart';

/// The set of arguments for RestApiPut.
class RestApiPutArgs {
  /// PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  final Input<String> body;

  /// Whether to rollback the API update when a warning is encountered. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? failOnWarnings;

  /// Map of customizations for importing the specification in the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as <span pulumi-lang-nodejs="`basepath`" pulumi-lang-dotnet="`Basepath`" pulumi-lang-go="`basepath`" pulumi-lang-python="`basepath`" pulumi-lang-yaml="`basepath`" pulumi-lang-java="`basepath`">`basepath`</span>, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the associated REST API.
  ///
  /// The following arguments are optional:
  final Input<String> restApiId;
  final Input<RestApiPutTimeouts>? timeouts;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  final Input<Map<String, String>>? triggers;

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
      map['timeouts'] =
          Input.mapOptionalInputValue<RestApiPutTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory RestApiPutArgs.fromMap(Map<String, dynamic> map) {
    return RestApiPutArgs(
      body: Input.asInput<String>(map['body']),
      failOnWarnings: Input.asOptionalInput<bool>(map['failOnWarnings']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
      timeouts: Input.asOptionalInput<RestApiPutTimeouts>(map['timeouts']),
      triggers: Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
