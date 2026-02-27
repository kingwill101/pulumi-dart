import 'package:pulumi/pulumi.dart';
import 'get_squota_info_args.dart';
import 'get_squota_info_result.dart';

/// Provides information about a particular quota for a given project, folder or organization.
Future<GetSQuotaInfoResult> getSQuotaInfo(
  GetSQuotaInfoArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudquota/getSQuotaInfo:getSQuotaInfo',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSQuotaInfoResult.fromMap(result);
}
