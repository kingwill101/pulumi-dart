import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_spanner_v1_args.dart';
import 'get_database_spanner_v1_result.dart';

/// Gets the state of a Cloud Spanner database.
Future<GetDatabaseSpannerV1Result> getDatabaseSpannerV1(
  GetDatabaseSpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSpannerV1Result.fromMap(result);
}
