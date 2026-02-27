import 'package:pulumi/pulumi.dart';
import 'get_portfolio_constraints_args.dart';
import 'get_portfolio_constraints_result.dart';

/// Provides information on Service Catalog Portfolio Constraints.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPortfolioConstraintsResult> getPortfolioConstraints(
  GetPortfolioConstraintsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolioConstraints:getPortfolioConstraints',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPortfolioConstraintsResult.fromMap(result);
}
