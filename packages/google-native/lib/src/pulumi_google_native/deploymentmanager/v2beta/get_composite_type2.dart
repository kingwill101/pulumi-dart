import 'package:pulumi/pulumi.dart' hide Config;
import 'get_composite_type_args2.dart';
import 'get_composite_type_result2.dart';

/// Gets information about a specific composite type.
Future<GetCompositeTypeResult2> getCompositeType2(
  GetCompositeTypeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getCompositeType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeResult2.fromMap(result);
}
