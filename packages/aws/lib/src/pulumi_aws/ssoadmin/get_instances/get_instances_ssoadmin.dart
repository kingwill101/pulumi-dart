import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_ssoadmin_args.dart';
import 'get_instances_ssoadmin_result.dart';

/// Use this data source to get ARNs and Identity Store IDs of Single Sign-On (SSO) Instances.
Future<GetInstancesSsoadminResult> getInstancesSsoadmin(
  GetInstancesSsoadminArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesSsoadminResult.fromMap(result);
}
