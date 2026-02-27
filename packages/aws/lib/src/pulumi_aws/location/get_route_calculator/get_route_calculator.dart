import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_calculator_args.dart';
import 'get_route_calculator_result.dart';

/// Retrieve information about a Location Service Route Calculator.
Future<GetRouteCalculatorResult> getRouteCalculator(
  GetRouteCalculatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getRouteCalculator:getRouteCalculator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteCalculatorResult.fromMap(result);
}
