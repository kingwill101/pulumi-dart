import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_bigtableadmin_v2_args.dart';
import 'get_table_bigtableadmin_v2_result.dart';

/// Gets metadata information about the specified table.
Future<GetTableBigtableadminV2Result> getTableBigtableadminV2(
  GetTableBigtableadminV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableBigtableadminV2Result.fromMap(result);
}
