import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trust_store_args.dart';
import 'get_trust_store_result.dart';

/// > **Note:** `aws_alb_trust_store` is known as `aws.lb.TrustStore`. The functionality is identical.
///
/// Provides information about a Load Balancer Trust Store.
///
/// This data source can prove useful when a module accepts an LB Trust Store as an
/// input variable and needs to know its attributes. It can also be used to get the ARN of
/// an LB Trust Store for use in other resources, given LB Trust Store name.
Future<GetTrustStoreResult> getTrustStore(
  GetTrustStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getTrustStore:getTrustStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustStoreResult.fromMap(result);
}
