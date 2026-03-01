import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// This data source provides the Eais Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.137.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eais:getInstances
///       arguments:
///         id:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eais:getInstances
///       arguments:
///         nameRegex: ^my-Instance
/// outputs:
///   eaisInstanceId1: ${ids.instances[0].id}
///   eaisInstanceId2: ${nameRegex.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eais_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eais/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
