import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transfer_project_service_account_args.dart';
import 'get_transfer_project_service_account_result.dart';

/// Use this data source to retrieve Storage Transfer service account for this project
Future<GetTransferProjectServiceAccountResult> getTransferProjectServiceAccount(
  GetTransferProjectServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServiceAccount:getTransferProjectServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServiceAccountResult.fromMap(result);
}
