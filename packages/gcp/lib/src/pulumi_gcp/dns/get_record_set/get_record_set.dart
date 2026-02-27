import 'package:pulumi/pulumi.dart';
import 'get_record_set_args.dart';
import 'get_record_set_result.dart';

/// Get a DNS record set within Google Cloud DNS
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/docs/records)
/// and
/// [API](https://cloud.google.com/dns/docs/reference/v1/resourceRecordSets)
Future<GetRecordSetResult> getRecordSet(
  GetRecordSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getRecordSet:getRecordSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRecordSetResult.fromMap(result);
}
