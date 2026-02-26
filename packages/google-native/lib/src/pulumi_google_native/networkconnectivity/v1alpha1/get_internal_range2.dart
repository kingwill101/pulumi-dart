import 'package:pulumi/pulumi.dart';
import 'get_internal_range_args2.dart';
import 'get_internal_range_result2.dart';

/// Gets details of a single internal range.
Future<GetInternalRangeResult2> getInternalRange2(
  GetInternalRangeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeResult2.fromMap(result);
}
