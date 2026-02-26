import 'package:pulumi/pulumi.dart';
import 'get_node_groups_args.dart';
import 'get_node_groups_result.dart';

/// Retrieve the EKS Node Groups associated with a named EKS cluster. This will allow you to pass a list of Node Group names to other resources.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getNodeGroups({
/// clusterName: "example",
/// });
/// const exampleGetNodeGroup = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.eks.getNodeGroup({
/// clusterName: "example",
/// nodeGroupName: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_node_groups(cluster_name="example")
/// example_get_node_group = {__key: aws.eks.get_node_group(cluster_name="example",
/// node_group_name=__value) for __key, __value in example.names}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetNodeGroups.Invoke(new()
/// {
/// ClusterName = "example",
/// });
///
/// var exampleGetNodeGroup = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNodeGroupsResult> getNodeGroups(
  GetNodeGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroups:getNodeGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupsResult.fromMap(result);
}
