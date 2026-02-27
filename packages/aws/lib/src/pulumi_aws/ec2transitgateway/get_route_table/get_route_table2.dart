import 'package:pulumi/pulumi.dart';
import 'get_route_table_args2.dart';
import 'get_route_table_result2.dart';

/// Get information on an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetRouteTableResult2> getRouteTable2(
  GetRouteTableArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTable:getRouteTable',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult2.fromMap(result);
}
