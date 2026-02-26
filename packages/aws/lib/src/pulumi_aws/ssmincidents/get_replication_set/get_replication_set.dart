import 'package:pulumi/pulumi.dart';
import 'get_replication_set_args.dart';
import 'get_replication_set_result.dart';

/// > **NOTE:** The AWS Region specified by a provider must always be one of the Regions specified for the replication set.
///
/// Use this data source to manage a replication set in AWS Systems Manager Incident Manager.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssmincidents.getReplicationSet({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.get_replication_set()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsmIncidents.GetReplicationSet.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmincidents.LookupReplicationSet(ctx, &ssmincidents.LookupReplicationSetArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.SsmincidentsFunctions;
/// import com.pulumi.aws.ssmincidents.inputs.GetReplicationSetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = SsmincidentsFunctions.getReplicationSet(GetReplicationSetArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssmincidents:getReplicationSet
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReplicationSetResult> getReplicationSet(
  GetReplicationSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getReplicationSet:getReplicationSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplicationSetResult.fromMap(result);
}
