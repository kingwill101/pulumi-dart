import 'package:pulumi/pulumi.dart';
import '../scope_target/scope_target.dart';
import '../scope_timeouts/scope_timeouts.dart';
import 'scope_args.dart';

/// Manages a Network Flow Monitor Scope.
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
/// const current = aws.getCallerIdentity({});
/// const example = new aws.networkflowmonitor.Scope("example", {
/// targets: [{
/// region: "us-east-1",
/// targetIdentifier: {
/// targetType: "ACCOUNT",
/// targetId: {
/// accountId: current.then(current => current.accountId),
/// },
/// },
/// }],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.networkflowmonitor.Scope("example",
/// targets=[{
/// "region": "us-east-1",
/// "target_identifier": {
/// "target_type": "ACCOUNT",
/// "target_id": {
/// "account_id": current.account_id,
/// },
/// },
/// }],
/// tags={
/// "Name": "example",
/// })
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
/// var example = new Aws.Networkflowmonitor.Scope("example", new()
/// {
/// Targets = new[]
/// {
/// new Aws.Networkflowmonitor.Inputs.ScopeTargetArgs
/// {
/// Region = "us-east-1",
/// TargetIdentifier = new Aws.Networkflowmonitor.Inputs.ScopeTargetTargetIdentifierArgs
/// {
/// TargetType = "ACCOUNT",
/// TargetId = new Aws.Networkflowmonitor.Inputs.ScopeTargetTargetIdentifierTargetIdArgs
/// {
/// AccountId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "example" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkflowmonitor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkflowmonitor.NewScope(ctx, "example", &networkflowmonitor.ScopeArgs{
/// Targets: networkflowmonitor.ScopeTargetArray{
/// &networkflowmonitor.ScopeTargetArgs{
/// Region: pulumi.String("us-east-1"),
/// TargetIdentifier: &networkflowmonitor.ScopeTargetTargetIdentifierArgs{
/// TargetType: pulumi.String("ACCOUNT"),
/// TargetId: &networkflowmonitor.ScopeTargetTargetIdentifierTargetIdArgs{
/// AccountId: pulumi.String(current.AccountId),
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.networkflowmonitor.Scope;
/// import com.pulumi.aws.networkflowmonitor.ScopeArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetTargetIdentifierArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.ScopeTargetTargetIdentifierTargetIdArgs;
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
/// var example = new Scope("example", ScopeArgs.builder()
/// .targets(ScopeTargetArgs.builder()
/// .region("us-east-1")
/// .targetIdentifier(ScopeTargetTargetIdentifierArgs.builder()
/// .targetType("ACCOUNT")
/// .targetId(ScopeTargetTargetIdentifierTargetIdArgs.builder()
/// .accountId(current.accountId())
/// .build())
/// .build())
/// .build())
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkflowmonitor:Scope
/// properties:
/// targets:
/// - region: us-east-1
/// targetIdentifier:
/// targetType: ACCOUNT
/// targetId:
/// accountId: ${current.accountId}
/// tags:
/// Name: example
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
/// Using `pulumi import`, import Network Flow Monitor Scope using the scope ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/scope:Scope example example-scope-id
/// ```
class Scope extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the scope.
  late final Output<String> scopeArn;

  /// The identifier for the scope that includes the resources you want to get data results for.
  late final Output<String> scopeId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  late final Output<List<ScopeTarget>> targets;
  late final Output<ScopeTimeouts?> timeouts;

  Scope(
    String name, {
    ScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/scope:Scope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.scopeArn = registerOutput<String>('scopeArn');
    this.scopeId = registerOutput<String>('scopeId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<ScopeTarget>>('targets');
    this.timeouts = registerOutput<ScopeTimeouts?>('timeouts');
  }
}
