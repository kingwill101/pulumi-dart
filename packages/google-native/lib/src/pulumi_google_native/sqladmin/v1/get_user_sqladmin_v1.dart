import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_sqladmin_v1_args.dart';
import 'get_user_sqladmin_v1_result.dart';

/// Retrieves a resource containing information about a user.
Future<GetUserSqladminV1Result> getUserSqladminV1(
  GetUserSqladminV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSqladminV1Result.fromMap(result);
}
