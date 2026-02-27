import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_internal_range_args.dart';
import 'get_internal_range_result.dart';

/// Gets details of a single internal range.
Future<GetInternalRangeResult> getInternalRange(
  GetInternalRangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getInternalRange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeResult.fromMap(result);
}
