import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_ip_args.dart';
import 'get_elastic_ip_result.dart';

/// `aws.ec2.Eip` provides details about a specific Elastic IP.
///
/// ## Example Usage
///
/// ### Search By Allocation ID (VPC only)
///
///
///
/// ### Search By Filters (EC2-Classic or VPC)
///
///
///
/// ### Search By Public IP (EC2-Classic or VPC)
///
///
///
/// ### Search By Tags (EC2-Classic or VPC)
Future<GetElasticIpResult> getElasticIp(
  GetElasticIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getElasticIp:getElasticIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticIpResult.fromMap(result);
}
