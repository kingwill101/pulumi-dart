import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_policy_args.dart';
import 'get_data_policy_result.dart';

/// Gets the data policy specified by its resource name.
Future<GetDataPolicyResult> getDataPolicy(
  GetDataPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatapolicy/v1:getDataPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataPolicyResult.fromMap(result);
}
