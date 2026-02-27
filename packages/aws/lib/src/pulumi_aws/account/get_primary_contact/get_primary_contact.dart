import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_primary_contact_args.dart';
import 'get_primary_contact_result.dart';

/// Data source for the primary contact information associated with an AWS Account.
Future<GetPrimaryContactResult> getPrimaryContact(
  GetPrimaryContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:account/getPrimaryContact:getPrimaryContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrimaryContactResult.fromMap(result);
}
