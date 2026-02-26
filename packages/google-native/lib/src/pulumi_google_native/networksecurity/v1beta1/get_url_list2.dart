import 'package:pulumi/pulumi.dart';
import 'get_url_list_args2.dart';
import 'get_url_list_result2.dart';

/// Gets details of a single UrlList.
Future<GetUrlListResult2> getUrlList2(
  GetUrlListArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getUrlList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUrlListResult2.fromMap(result);
}
