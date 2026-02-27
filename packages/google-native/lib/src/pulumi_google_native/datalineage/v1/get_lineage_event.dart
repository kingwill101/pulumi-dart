import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lineage_event_args.dart';
import 'get_lineage_event_result.dart';

/// Gets details of a specified lineage event.
Future<GetLineageEventResult> getLineageEvent(
  GetLineageEventArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getLineageEvent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLineageEventResult.fromMap(result);
}
