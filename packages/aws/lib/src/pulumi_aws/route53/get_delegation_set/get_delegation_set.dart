import 'package:pulumi/pulumi.dart';
import 'get_delegation_set_args.dart';
import 'get_delegation_set_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.DelegationSet`" pulumi-lang-dotnet="`aws.route53.DelegationSet`" pulumi-lang-go="`route53.DelegationSet`" pulumi-lang-python="`route53.DelegationSet`" pulumi-lang-yaml="`aws.route53.DelegationSet`" pulumi-lang-java="`aws.route53.DelegationSet`">`aws.route53.DelegationSet`</span> provides details about a specific Route 53 Delegation Set.
///
/// This data source allows to find a list of name servers associated with a specific delegation set.
///
/// ## Example Usage
///
/// The following example shows how to get a delegation set from its id.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dset = aws.route53.getDelegationSet({
/// id: "MQWGHCBFAKEID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dset = aws.route53.get_delegation_set(id="MQWGHCBFAKEID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dset = Aws.Route53.GetDelegationSet.Invoke(new()
/// {
/// Id = "MQWGHCBFAKEID",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.LookupDelegationSet(ctx, &route53.LookupDelegationSetArgs{
/// Id: "MQWGHCBFAKEID",
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetDelegationSetArgs;
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
/// final var dset = Route53Functions.getDelegationSet(GetDelegationSetArgs.builder()
/// .id("MQWGHCBFAKEID")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// dset:
/// fn::invoke:
/// function: aws:route53:getDelegationSet
/// arguments:
/// id: MQWGHCBFAKEID
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDelegationSetResult> getDelegationSet(
  GetDelegationSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getDelegationSet:getDelegationSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDelegationSetResult.fromMap(result);
}
