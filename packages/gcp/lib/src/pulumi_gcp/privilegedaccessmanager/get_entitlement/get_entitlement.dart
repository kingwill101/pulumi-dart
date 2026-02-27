import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_args.dart';
import 'get_entitlement_result.dart';

/// Use this data source to get information about a Google Cloud Privileged Access Manager Entitlement.
///
/// To get more information about Privileged Access Manager, see:
///
/// * [API Documentation](https://cloud.google.com/iam/docs/reference/pam/rest)
/// * How-to guides
/// * [Official documentation](https://cloud.google.com/iam/docs/pam-overview)
Future<GetEntitlementResult> getEntitlement(
  GetEntitlementArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:privilegedaccessmanager/getEntitlement:getEntitlement',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitlementResult.fromMap(result);
}
