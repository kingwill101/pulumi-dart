import 'package:pulumi/pulumi.dart';
import 'get_location_args.dart';
import 'get_location_result.dart';

/// Retrieve information about a specific AWS Direct Connect location in the current AWS Region.
/// These are the locations that can be specified when configuring `aws.directconnect.Connection` or `aws.directconnect.LinkAggregationGroup` resources.
///
/// > **Note:** This data source is different from the `aws.directconnect.getLocations` data source which retrieves information about all the AWS Direct Connect locations in the current AWS Region.
Future<GetLocationResult> getLocation(
  GetLocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getLocation:getLocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationResult.fromMap(result);
}
