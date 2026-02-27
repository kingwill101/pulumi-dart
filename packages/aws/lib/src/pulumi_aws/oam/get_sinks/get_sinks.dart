import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sinks_args.dart';
import 'get_sinks_result.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Sinks.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetSinksResult> getSinks(
  GetSinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getSinks:getSinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSinksResult.fromMap(result);
}
