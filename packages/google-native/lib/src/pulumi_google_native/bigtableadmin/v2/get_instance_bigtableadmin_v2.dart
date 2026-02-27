import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_bigtableadmin_v2_args.dart';
import 'get_instance_bigtableadmin_v2_result.dart';

/// Gets information about an instance.
Future<GetInstanceBigtableadminV2Result> getInstanceBigtableadminV2(
  GetInstanceBigtableadminV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceBigtableadminV2Result.fromMap(result);
}
