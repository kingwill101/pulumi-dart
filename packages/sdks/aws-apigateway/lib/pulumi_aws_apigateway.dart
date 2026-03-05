// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_aws_apigateway/index.dart' as module_index;
import 'package:pulumi_aws_apigateway/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final APIKeySource = module_index.APIKeySource.values;
  final Authorizer = module_index.Authorizer.new;
  final AuthorizerArgs = module_index.Authorizer.new;
  final IntegrationConnectionType = module_index.IntegrationConnectionType.values;
  final IntegrationPassthroughBehavior = module_index.IntegrationPassthroughBehavior.values;
  final IntegrationType = module_index.IntegrationType.values;
  final Method = module_index.Method.values;
  final RequestValidator = module_index.RequestValidator.values;
  final RequiredParameter = module_index.RequiredParameter.new;
  final RequiredParameterArgs = module_index.RequiredParameter.new;
  final RestAPI = module_index.RestAPI.new;
  final RestAPIArgs = module_index.RestAPIArgs.new;
  final Route = module_index.Route.new;
  final RouteArgs = module_index.Route.new;
  final SwaggerGatewayResponse = module_index.SwaggerGatewayResponse.new;
  final SwaggerGatewayResponseArgs = module_index.SwaggerGatewayResponse.new;
  final Target = module_index.Target.new;
  final TargetArgs = module_index.Target.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final AwsApigateway = module_providers.ProviderProvider.new;
}
