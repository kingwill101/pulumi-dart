import 'package:pulumi/pulumi.dart' hide Config;
import 'get_page_args.dart';
import 'get_page_result.dart';

/// Retrieves the specified page.
Future<GetPageResult> getPage(
  GetPageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getPage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPageResult.fromMap(result);
}
