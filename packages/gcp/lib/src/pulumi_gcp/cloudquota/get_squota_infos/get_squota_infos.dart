import 'package:pulumi/pulumi.dart';
import 'get_squota_infos_args.dart';
import 'get_squota_infos_result.dart';

/// Provides information about all quotas for a given project, folder or organization.
Future<GetSQuotaInfosResult> getSQuotaInfos(
  GetSQuotaInfosArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudquota/getSQuotaInfos:getSQuotaInfos',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSQuotaInfosResult.fromMap(result);
}
