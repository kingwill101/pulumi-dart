import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_args.dart';
import 'get_records_result.dart';

/// Use this data source to get the details of resource records in a Route 53 hosted zone.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Return all records in the zone.
///
///
///
/// ### Basic Usage with filter
///
/// Return the records that starts with `www`.
Future<GetRecordsResult> getRecords(
  GetRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getRecords:getRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordsResult.fromMap(result);
}
