import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_sqladmin_v1beta4_args.dart';
import 'get_user_sqladmin_v1beta4_result.dart';

/// Retrieves a resource containing information about a user.
Future<GetUserSqladminV1beta4Result> getUserSqladminV1beta4(
  GetUserSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSqladminV1beta4Result.fromMap(result);
}
