import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quicksight_user_args.dart';
import 'get_quicksight_user_result.dart';

/// This data source can be used to fetch information about a specific
/// QuickSight user. By using this data source, you can reference QuickSight user
/// properties without having to hard code ARNs or unique IDs as input.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetQuicksightUserResult> getQuicksightUser(
  GetQuicksightUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightUser:getQuicksightUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuicksightUserResult.fromMap(result);
}
