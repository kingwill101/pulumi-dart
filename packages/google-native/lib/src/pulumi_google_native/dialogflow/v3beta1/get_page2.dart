import 'package:pulumi/pulumi.dart';
import 'get_page_args2.dart';
import 'get_page_result2.dart';

/// Retrieves the specified page.
Future<GetPageResult2> getPage2(
  GetPageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getPage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPageResult2.fromMap(result);
}
