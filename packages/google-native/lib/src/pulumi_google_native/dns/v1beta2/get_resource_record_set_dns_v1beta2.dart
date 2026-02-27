import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_record_set_dns_v1beta2_args.dart';
import 'get_resource_record_set_dns_v1beta2_result.dart';

/// Fetches the representation of an existing ResourceRecordSet.
Future<GetResourceRecordSetDnsV1beta2Result> getResourceRecordSetDnsV1beta2(
  GetResourceRecordSetDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResourceRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceRecordSetDnsV1beta2Result.fromMap(result);
}
