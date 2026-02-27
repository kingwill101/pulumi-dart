import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quicksight_group_args.dart';
import 'get_quicksight_group_result.dart';

/// This data source can be used to fetch information about a specific
/// QuickSight group. By using this data source, you can reference QuickSight group
/// properties without having to hard code ARNs or unique IDs as input.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetQuicksightGroupResult> getQuicksightGroup(
  GetQuicksightGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightGroup:getQuicksightGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuicksightGroupResult.fromMap(result);
}
