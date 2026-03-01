// ignore_for_file: non_constant_identifier_names

library pulumi_aws_apigateway;

import 'package:pulumi_aws_apigateway/index.dart' as _index;
import 'package:pulumi_aws_apigateway/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final APIKeySource = _index.APIKeySource.values;
  final Authorizer = _index.Authorizer.new;
  final AuthorizerArgs = _index.Authorizer.new;
  final IntegrationConnectionType = _index.IntegrationConnectionType.values;
  final IntegrationPassthroughBehavior = _index.IntegrationPassthroughBehavior.values;
  final IntegrationType = _index.IntegrationType.values;
  final Method = _index.Method.values;
  final RequestValidator = _index.RequestValidator.values;
  final RequiredParameter = _index.RequiredParameter.new;
  final RequiredParameterArgs = _index.RequiredParameter.new;
  final RestAPI = _index.RestAPI.new;
  final RestAPIArgs = _index.RestAPIArgs.new;
  final Route = _index.Route.new;
  final RouteArgs = _index.Route.new;
  final SwaggerGatewayResponse = _index.SwaggerGatewayResponse.new;
  final SwaggerGatewayResponseArgs = _index.SwaggerGatewayResponse.new;
  final Target = _index.Target.new;
  final TargetArgs = _index.Target.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final AwsApigateway = _providers.ProviderProvider.new;
}

