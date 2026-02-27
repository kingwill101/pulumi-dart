import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_spanner_v1_args.dart';
import 'get_instance_spanner_v1_result.dart';

/// Gets information about a particular instance.
Future<GetInstanceSpannerV1Result> getInstanceSpannerV1(
  GetInstanceSpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSpannerV1Result.fromMap(result);
}
