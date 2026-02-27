import 'package:pulumi/pulumi.dart' hide Config;
import 'get_composite_type_args.dart';
import 'get_composite_type_result.dart';

/// Gets information about a specific composite type.
Future<GetCompositeTypeResult> getCompositeType(
  GetCompositeTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getCompositeType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeResult.fromMap(result);
}
