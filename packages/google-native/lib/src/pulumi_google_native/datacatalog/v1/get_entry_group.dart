import 'package:pulumi/pulumi.dart';
import 'get_entry_group_args.dart';
import 'get_entry_group_result.dart';

/// Gets an entry group.
Future<GetEntryGroupResult> getEntryGroup(
  GetEntryGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntryGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupResult.fromMap(result);
}
