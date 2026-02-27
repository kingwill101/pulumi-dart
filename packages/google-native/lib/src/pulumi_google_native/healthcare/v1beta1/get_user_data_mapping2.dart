import 'package:pulumi/pulumi.dart' hide Config;
import 'get_user_data_mapping_args2.dart';
import 'get_user_data_mapping_result2.dart';

/// Gets the specified User data mapping.
Future<GetUserDataMappingResult2> getUserDataMapping2(
  GetUserDataMappingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getUserDataMapping',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingResult2.fromMap(result);
}
