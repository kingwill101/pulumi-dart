import 'package:pulumi/pulumi.dart';
import 'get_solution_stack_args.dart';
import 'get_solution_stack_result.dart';

/// Use this data source to get the name of a elastic beanstalk solution stack.
Future<GetSolutionStackResult> getSolutionStack(
  GetSolutionStackArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getSolutionStack:getSolutionStack',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSolutionStackResult.fromMap(result);
}
