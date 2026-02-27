import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_datacatalog_v1beta1_args.dart';
import 'get_entry_group_datacatalog_v1beta1_result.dart';

/// Gets an EntryGroup.
Future<GetEntryGroupDatacatalogV1beta1Result> getEntryGroupDatacatalogV1beta1(
  GetEntryGroupDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupDatacatalogV1beta1Result.fromMap(result);
}
