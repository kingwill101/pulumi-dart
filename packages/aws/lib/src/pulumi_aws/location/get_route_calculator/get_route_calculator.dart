import 'package:pulumi/pulumi.dart';
import 'get_route_calculator_args.dart';
import 'get_route_calculator_result.dart';

/// Retrieve information about a Location Service Route Calculator.
Future<GetRouteCalculatorResult> getRouteCalculator(
  GetRouteCalculatorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getRouteCalculator:getRouteCalculator',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteCalculatorResult.fromMap(result);
}
