import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_url_list_networksecurity_v1beta1_args.dart';
import 'get_url_list_networksecurity_v1beta1_result.dart';

/// Gets details of a single UrlList.
Future<GetUrlListNetworksecurityV1beta1Result> getUrlListNetworksecurityV1beta1(
  GetUrlListNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getUrlList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlListNetworksecurityV1beta1Result.fromMap(result);
}
