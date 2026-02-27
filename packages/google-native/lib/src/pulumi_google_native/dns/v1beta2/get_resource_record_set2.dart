import 'package:pulumi/pulumi.dart' hide Config;
import 'get_resource_record_set_args2.dart';
import 'get_resource_record_set_result2.dart';

/// Fetches the representation of an existing ResourceRecordSet.
Future<GetResourceRecordSetResult2> getResourceRecordSet2(
  GetResourceRecordSetArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResourceRecordSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceRecordSetResult2.fromMap(result);
}
