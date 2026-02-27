import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_data_mapping_healthcare_v1beta1_args.dart';
import 'get_user_data_mapping_healthcare_v1beta1_result.dart';

/// Gets the specified User data mapping.
Future<GetUserDataMappingHealthcareV1beta1Result>
    getUserDataMappingHealthcareV1beta1(
  GetUserDataMappingHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getUserDataMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingHealthcareV1beta1Result.fromMap(result);
}
