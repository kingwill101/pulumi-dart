import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_page_dialogflow_v3beta1_args.dart';
import 'get_page_dialogflow_v3beta1_result.dart';

/// Retrieves the specified page.
Future<GetPageDialogflowV3beta1Result> getPageDialogflowV3beta1(
  GetPageDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getPage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPageDialogflowV3beta1Result.fromMap(result);
}
