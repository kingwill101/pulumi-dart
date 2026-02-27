import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_issue_model_args.dart';
import 'get_issue_model_result.dart';

/// Gets an issue model.
Future<GetIssueModelResult> getIssueModel(
  GetIssueModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getIssueModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIssueModelResult.fromMap(result);
}
