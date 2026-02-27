import 'package:pulumi/pulumi.dart';
import 'get_transfer_project_servie_account_args.dart';
import 'get_transfer_project_servie_account_result.dart';

/// Use this data source to retrieve Storage Transfer service account for this project
Future<GetTransferProjectServieAccountResult> getTransferProjectServieAccount(
  GetTransferProjectServieAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServieAccount:getTransferProjectServieAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServieAccountResult.fromMap(result);
}
