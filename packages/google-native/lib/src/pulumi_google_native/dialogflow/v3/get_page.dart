import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_page_args.dart';
import 'get_page_result.dart';

/// Retrieves the specified page.
Future<GetPageResult> getPage(
  GetPageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getPage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPageResult.fromMap(result);
}
