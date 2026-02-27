import 'package:pulumi/pulumi.dart';
import 'get_locations_args.dart';
import 'get_locations_result.dart';

/// Retrieve information about the AWS Direct Connect locations in the current AWS Region.
/// These are the locations that can be specified when configuring `aws.directconnect.Connection` or `aws.directconnect.LinkAggregationGroup` resources.
///
/// > **Note:** This data source is different from the `aws.directconnect.getLocation` data source which retrieves information about a specific AWS Direct Connect location in the current AWS Region.
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}
