import 'package:pulumi/pulumi.dart';
import 'get_url_list_args.dart';
import 'get_url_list_result.dart';

/// Gets details of a single UrlList.
Future<GetUrlListResult> getUrlList(
  GetUrlListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getUrlList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUrlListResult.fromMap(result);
}
