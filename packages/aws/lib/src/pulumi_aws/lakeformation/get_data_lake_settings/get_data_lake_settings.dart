import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_lake_settings_args.dart';
import 'get_data_lake_settings_result.dart';

/// Get Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
Future<GetDataLakeSettingsResult> getDataLakeSettings(
  GetDataLakeSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getDataLakeSettings:getDataLakeSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLakeSettingsResult.fromMap(result);
}
