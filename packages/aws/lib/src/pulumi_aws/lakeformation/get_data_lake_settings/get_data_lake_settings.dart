import 'package:pulumi/pulumi.dart';
import 'get_data_lake_settings_args.dart';
import 'get_data_lake_settings_result.dart';

/// Get Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
Future<GetDataLakeSettingsResult> getDataLakeSettings(
  GetDataLakeSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getDataLakeSettings:getDataLakeSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataLakeSettingsResult.fromMap(result);
}
