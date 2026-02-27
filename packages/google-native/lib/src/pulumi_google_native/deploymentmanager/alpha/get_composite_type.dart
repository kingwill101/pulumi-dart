import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_composite_type_args.dart';
import 'get_composite_type_result.dart';

/// Gets information about a specific composite type.
Future<GetCompositeTypeResult> getCompositeType(
  GetCompositeTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getCompositeType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeResult.fromMap(result);
}
