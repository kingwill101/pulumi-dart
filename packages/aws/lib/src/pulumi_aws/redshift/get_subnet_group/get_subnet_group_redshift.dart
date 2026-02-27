import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_group_redshift_args.dart';
import 'get_subnet_group_redshift_result.dart';

/// Provides details about a specific redshift subnet group.
Future<GetSubnetGroupRedshiftResult> getSubnetGroupRedshift(
  GetSubnetGroupRedshiftArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupRedshiftResult.fromMap(result);
}
