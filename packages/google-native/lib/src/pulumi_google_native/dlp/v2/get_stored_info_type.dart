import 'package:pulumi/pulumi.dart' hide Config;
import 'get_stored_info_type_args.dart';
import 'get_stored_info_type_result.dart';

/// Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.
Future<GetStoredInfoTypeResult> getStoredInfoType(
  GetStoredInfoTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getStoredInfoType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStoredInfoTypeResult.fromMap(result);
}
