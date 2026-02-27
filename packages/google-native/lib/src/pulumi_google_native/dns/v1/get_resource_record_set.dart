import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_record_set_args.dart';
import 'get_resource_record_set_result.dart';

/// Fetches the representation of an existing ResourceRecordSet.
Future<GetResourceRecordSetResult> getResourceRecordSet(
  GetResourceRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResourceRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceRecordSetResult.fromMap(result);
}
