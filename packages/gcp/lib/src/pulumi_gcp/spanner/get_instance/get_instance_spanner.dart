import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_spanner_args.dart';
import 'get_instance_spanner_result.dart';

/// Get a spanner instance from Google Cloud by its name.
Future<GetInstanceSpannerResult> getInstanceSpanner(
  GetInstanceSpannerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSpannerResult.fromMap(result);
}
