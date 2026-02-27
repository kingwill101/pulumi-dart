import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_info_args.dart';
import 'get_squota_info_result.dart';

/// Provides information about a particular quota for a given project, folder or organization.
Future<GetSQuotaInfoResult> getSQuotaInfo(
  GetSQuotaInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudquota/getSQuotaInfo:getSQuotaInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSQuotaInfoResult.fromMap(result);
}
