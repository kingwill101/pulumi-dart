import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_database_flags_args.dart';
import 'get_supported_database_flags_result.dart';

/// Use this data source to get information about the supported alloydb database flags in a location.
Future<GetSupportedDatabaseFlagsResult> getSupportedDatabaseFlags(
  GetSupportedDatabaseFlagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getSupportedDatabaseFlags:getSupportedDatabaseFlags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedDatabaseFlagsResult.fromMap(result);
}
