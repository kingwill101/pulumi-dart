import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_data_mapping_args.dart';
import 'get_user_data_mapping_result.dart';

/// Gets the specified User data mapping.
Future<GetUserDataMappingResult> getUserDataMapping(
  GetUserDataMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getUserDataMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingResult.fromMap(result);
}
