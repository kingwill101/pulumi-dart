import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_data_mapping_args.dart';
import 'get_user_data_mapping_result.dart';

/// Gets the specified User data mapping.
Future<GetUserDataMappingResult> getUserDataMapping(
  GetUserDataMappingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getUserDataMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingResult.fromMap(result);
}
