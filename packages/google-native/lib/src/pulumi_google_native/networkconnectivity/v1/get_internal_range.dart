import 'package:pulumi/pulumi.dart';
import 'get_internal_range_args.dart';
import 'get_internal_range_result.dart';

/// Gets details of a single internal range.
Future<GetInternalRangeResult> getInternalRange(
  GetInternalRangeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getInternalRange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeResult.fromMap(result);
}
