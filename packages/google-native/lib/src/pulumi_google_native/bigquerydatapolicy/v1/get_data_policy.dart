import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_policy_args.dart';
import 'get_data_policy_result.dart';

/// Gets the data policy specified by its resource name.
Future<GetDataPolicyResult> getDataPolicy(
  GetDataPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatapolicy/v1:getDataPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataPolicyResult.fromMap(result);
}
