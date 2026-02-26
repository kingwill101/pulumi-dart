import 'package:pulumi/pulumi.dart';
import 'get_clusters_args2.dart';
import 'get_clusters_result2.dart';

/// Retrieve EKS Clusters list
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.eks.getClusters({});
/// const exampleGetCluster = example.then(example => std.toset({
/// input: example.names,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.eks.getCluster({
/// name: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.eks.get_clusters()
/// example_get_cluster = {__key: aws.eks.get_cluster(name=__value) for __key, __value in std.toset(input=example.names).result}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetClusters.Invoke();
///
/// var exampleGetCluster = Std.Toset.Invoke(new()
/// {
/// Input = example.Apply(getClustersResult => getClustersResult.Names),
/// }).Apply(invoke => );
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClustersResult2> getClusters2(
  GetClustersArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusters:getClusters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClustersResult2.fromMap(result);
}
