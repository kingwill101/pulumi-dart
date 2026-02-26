import 'package:pulumi/pulumi.dart';
import 'resource_policy_args3.dart';

/// Resource for managing an AWS DynamoDB Resource Policy.
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
/// const example = new aws.dynamodb.ResourcePolicy("example", {
/// resourceArn: exampleAwsDynamodbTable.arn,
/// policy: test.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.ResourcePolicy("example",
/// resource_arn=example_aws_dynamodb_table["arn"],
/// policy=test["json"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DynamoDB.ResourcePolicy("example", new()
/// {
/// ResourceArn = exampleAwsDynamodbTable.Arn,
/// Policy = test.Json,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dynamodb.NewResourcePolicy(ctx, "example", &dynamodb.ResourcePolicyArgs{
/// ResourceArn: pulumi.Any(exampleAwsDynamodbTable.Arn),
/// Policy:      pulumi.Any(test.Json),
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
/// import com.pulumi.aws.dynamodb.ResourcePolicy;
/// import com.pulumi.aws.dynamodb.ResourcePolicyArgs;
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
/// var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
/// .resourceArn(exampleAwsDynamodbTable.arn())
/// .policy(test.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:ResourcePolicy
/// properties:
/// resourceArn: ${exampleAwsDynamodbTable.arn}
/// policy: ${test.json}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DynamoDB table.
///
///
/// Using `pulumi import`, import DynamoDB Resource Policy using the <span pulumi-lang-nodejs="`resourceArn`" pulumi-lang-dotnet="`ResourceArn`" pulumi-lang-go="`resourceArn`" pulumi-lang-python="`resource_arn`" pulumi-lang-yaml="`resourceArn`" pulumi-lang-java="`resourceArn`">`resource_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/resourcePolicy:ResourcePolicy example arn:aws:dynamodb:us-east-1:1234567890:table/my-table
/// ```
class ResourcePolicy3 extends CustomResource {
  /// Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  late final Output<bool> confirmRemoveSelfResourceAccess;

  /// n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  ///
  /// The following arguments are optional:
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  late final Output<String> resourceArn;

  /// A unique string that represents the revision ID of the policy. If you are comparing revision IDs, make sure to always use string comparison logic.
  late final Output<String> revisionId;

  ResourcePolicy3(
    String name, {
    ResourcePolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.confirmRemoveSelfResourceAccess =
        registerOutput<bool>('confirmRemoveSelfResourceAccess');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.revisionId = registerOutput<String>('revisionId');
  }
}
