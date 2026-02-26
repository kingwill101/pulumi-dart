import 'package:pulumi/pulumi.dart';
import 'get_producer_data_shares_args.dart';
import 'get_producer_data_shares_result.dart';

/// Data source for managing AWS Redshift Producer Data Shares.
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
/// const example = aws.redshift.getProducerDataShares({
/// producerArn: "",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_producer_data_shares(producer_arn="")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedShift.GetProducerDataShares.Invoke(new()
/// {
/// ProducerArn = "",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.GetProducerDataShares(ctx, &redshift.GetProducerDataSharesArgs{
/// ProducerArn: "",
/// }, nil)
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
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetProducerDataSharesArgs;
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
/// final var example = RedshiftFunctions.getProducerDataShares(GetProducerDataSharesArgs.builder()
/// .producerArn("")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshift:getProducerDataShares
/// arguments:
/// producerArn: ""
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProducerDataSharesResult> getProducerDataShares(
  GetProducerDataSharesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getProducerDataShares:getProducerDataShares',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProducerDataSharesResult.fromMap(result);
}
