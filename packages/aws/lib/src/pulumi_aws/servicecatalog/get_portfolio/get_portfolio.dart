import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_portfolio_args.dart';
import 'get_portfolio_result.dart';

/// Provides information for a Service Catalog Portfolio.
Future<GetPortfolioResult> getPortfolio(
  GetPortfolioArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolio:getPortfolio',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortfolioResult.fromMap(result);
}
