import 'package:pulumi/pulumi.dart' hide Config;
import 'get_sfdc_instance_args.dart';
import 'get_sfdc_instance_result.dart';

/// Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.
Future<GetSfdcInstanceResult> getSfdcInstance(
  GetSfdcInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getSfdcInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSfdcInstanceResult.fromMap(result);
}
