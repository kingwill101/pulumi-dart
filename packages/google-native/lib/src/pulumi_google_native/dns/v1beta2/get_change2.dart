import 'package:pulumi/pulumi.dart';
import 'get_change_args2.dart';
import 'get_change_result2.dart';

/// Fetches the representation of an existing Change.
Future<GetChangeResult2> getChange2(
  GetChangeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getChange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChangeResult2.fromMap(result);
}
