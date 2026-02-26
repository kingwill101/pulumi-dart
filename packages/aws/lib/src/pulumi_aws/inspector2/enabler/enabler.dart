import 'package:pulumi/pulumi.dart';
import 'enabler_args.dart';

/// Resource for enabling Amazon Inspector resource scans.
///
/// This resource must be created in the Organization's Administrator Account.
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
/// const example = new aws.inspector2.Enabler("example", {
/// accountIds: ["123456789012"],
/// resourceTypes: ["EC2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector2.Enabler("example",
/// account_ids=["123456789012"],
/// resource_types=["EC2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Inspector2.Enabler("example", new()
/// {
/// AccountIds = new[]
/// {
/// "123456789012",
/// },
/// ResourceTypes = new[]
/// {
/// "EC2",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := inspector2.NewEnabler(ctx, "example", &inspector2.EnablerArgs{
/// AccountIds: pulumi.StringArray{
/// pulumi.String("123456789012"),
/// },
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("EC2"),
/// },
/// })
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
/// import com.pulumi.aws.inspector2.Enabler;
/// import com.pulumi.aws.inspector2.EnablerArgs;
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
/// var example = new Enabler("example", EnablerArgs.builder()
/// .accountIds("123456789012")
/// .resourceTypes("EC2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:inspector2:Enabler
/// properties:
/// accountIds:
/// - '123456789012'
/// resourceTypes:
/// - EC2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### For the Calling Account
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = new aws.inspector2.Enabler("test", {
/// accountIds: [current.then(current => current.accountId)],
/// resourceTypes: [
/// "ECR",
/// "EC2",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.inspector2.Enabler("test",
/// account_ids=[current.account_id],
/// resource_types=[
/// "ECR",
/// "EC2",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var test = new Aws.Inspector2.Enabler("test", new()
/// {
/// AccountIds = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// ResourceTypes = new[]
/// {
/// "ECR",
/// "EC2",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = inspector2.NewEnabler(ctx, "test", &inspector2.EnablerArgs{
/// AccountIds: pulumi.StringArray{
/// pulumi.String(current.AccountId),
/// },
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("ECR"),
/// pulumi.String("EC2"),
/// },
/// })
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inspector2.Enabler;
/// import com.pulumi.aws.inspector2.EnablerArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var test = new Enabler("test", EnablerArgs.builder()
/// .accountIds(current.accountId())
/// .resourceTypes(
/// "ECR",
/// "EC2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:inspector2:Enabler
/// properties:
/// accountIds:
/// - ${current.accountId}
/// resourceTypes:
/// - ECR
/// - EC2
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Enabler using using <span pulumi-lang-nodejs="`accountIds`" pulumi-lang-dotnet="`AccountIds`" pulumi-lang-go="`accountIds`" pulumi-lang-python="`account_ids`" pulumi-lang-yaml="`accountIds`" pulumi-lang-java="`accountIds`">`account_ids`</span> and <span pulumi-lang-nodejs="`regionTypes`" pulumi-lang-dotnet="`RegionTypes`" pulumi-lang-go="`regionTypes`" pulumi-lang-python="`region_types`" pulumi-lang-yaml="`regionTypes`" pulumi-lang-java="`regionTypes`">`region_types`</span> formatted as `<span pulumi-lang-nodejs="[accountId1]" pulumi-lang-dotnet="[AccountId1]" pulumi-lang-go="[accountId1]" pulumi-lang-python="[account_id1]" pulumi-lang-yaml="[accountId1]" pulumi-lang-java="[accountId1]">[account_id1]</span>:<span pulumi-lang-nodejs="[accountId2]" pulumi-lang-dotnet="[AccountId2]" pulumi-lang-go="[accountId2]" pulumi-lang-python="[account_id2]" pulumi-lang-yaml="[accountId2]" pulumi-lang-java="[accountId2]">[account_id2]</span>:...-<span pulumi-lang-nodejs="[resourceType1]" pulumi-lang-dotnet="[ResourceType1]" pulumi-lang-go="[resourceType1]" pulumi-lang-python="[resource_type1]" pulumi-lang-yaml="[resourceType1]" pulumi-lang-java="[resourceType1]">[resource_type1]</span>:<span pulumi-lang-nodejs="[resourceType2]" pulumi-lang-dotnet="[ResourceType2]" pulumi-lang-go="[resourceType2]" pulumi-lang-python="[resource_type2]" pulumi-lang-yaml="[resourceType2]" pulumi-lang-java="[resourceType2]">[resource_type2]</span>:...`, where <span pulumi-lang-nodejs="`accountIds`" pulumi-lang-dotnet="`AccountIds`" pulumi-lang-go="`accountIds`" pulumi-lang-python="`account_ids`" pulumi-lang-yaml="`accountIds`" pulumi-lang-java="`accountIds`">`account_ids`</span> are sorted in ascending order and <span pulumi-lang-nodejs="`resourceTypes`" pulumi-lang-dotnet="`ResourceTypes`" pulumi-lang-go="`resourceTypes`" pulumi-lang-python="`resource_types`" pulumi-lang-yaml="`resourceTypes`" pulumi-lang-java="`resourceTypes`">`resource_types`</span> are sorted in alphabetical order. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/enabler:Enabler example 123456789012:234567890123-EC2:ECR
/// ```
class Enabler extends CustomResource {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  late final Output<List<String>> accountIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  late final Output<List<String>> resourceTypes;

  Enabler(
    String name, {
    EnablerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/enabler:Enabler',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountIds = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
    this.resourceTypes = Output.createUnknown<List<String>>();
  }
}
