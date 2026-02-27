import 'package:pulumi/pulumi.dart';
import 'api_mapping_args.dart';

/// Manages an Amazon API Gateway Version 2 API mapping.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.ApiMapping` using the API mapping identifier and domain name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/apiMapping:ApiMapping example 1122334/ws-api.example.com
/// ```
class ApiMapping extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  late final Output<String?> apiMappingKey;

  /// Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  late final Output<String> stage;

  ApiMapping(
    String name, {
    ApiMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/apiMapping:ApiMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.apiMappingKey = registerOutput<String?>('apiMappingKey');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
    this.stage = registerOutput<String>('stage');
  }
}
