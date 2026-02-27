import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_datacatalog_v1_args.dart';
import 'get_entry_datacatalog_v1_result.dart';

/// Gets an entry.
Future<GetEntryDatacatalogV1Result> getEntryDatacatalogV1(
  GetEntryDatacatalogV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryDatacatalogV1Result.fromMap(result);
}
