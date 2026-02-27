import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_args.dart';
import 'get_entry_group_result.dart';

/// Gets an entry group.
Future<GetEntryGroupResult> getEntryGroup(
  GetEntryGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntryGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupResult.fromMap(result);
}
