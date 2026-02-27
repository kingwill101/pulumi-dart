import 'package:pulumi/pulumi.dart';
import 'get_transfer_project_service_account_args.dart';
import 'get_transfer_project_service_account_result.dart';

/// Use this data source to retrieve Storage Transfer service account for this project
Future<GetTransferProjectServiceAccountResult> getTransferProjectServiceAccount(
  GetTransferProjectServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServiceAccount:getTransferProjectServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServiceAccountResult.fromMap(result);
}
