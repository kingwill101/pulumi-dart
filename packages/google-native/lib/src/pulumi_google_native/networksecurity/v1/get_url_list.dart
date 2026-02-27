import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_url_list_args.dart';
import 'get_url_list_result.dart';

/// Gets details of a single UrlList.
Future<GetUrlListResult> getUrlList(
  GetUrlListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getUrlList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlListResult.fromMap(result);
}
