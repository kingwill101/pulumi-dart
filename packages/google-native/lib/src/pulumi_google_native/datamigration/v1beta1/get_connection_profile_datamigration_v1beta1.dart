import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_datamigration_v1beta1_args.dart';
import 'get_connection_profile_datamigration_v1beta1_result.dart';

/// Gets details of a single connection profile.
Future<GetConnectionProfileDatamigrationV1beta1Result>
    getConnectionProfileDatamigrationV1beta1(
  GetConnectionProfileDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatamigrationV1beta1Result.fromMap(result);
}
