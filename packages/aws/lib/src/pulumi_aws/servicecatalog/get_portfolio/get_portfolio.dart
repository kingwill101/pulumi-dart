import 'package:pulumi/pulumi.dart';
import 'get_portfolio_args.dart';
import 'get_portfolio_result.dart';

/// Provides information for a Service Catalog Portfolio.
Future<GetPortfolioResult> getPortfolio(
  GetPortfolioArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolio:getPortfolio',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPortfolioResult.fromMap(result);
}
