import 'package:pulumi/pulumi.dart';
import 'get_instance_args14.dart';
import 'get_instance_result14.dart';

/// Gets the DatabaseInstance identified by the specified resource name.
Future<GetInstanceResult14> getInstance14(
  GetInstanceArgs14 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasedatabase/v1beta:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult14.fromMap(result);
}
