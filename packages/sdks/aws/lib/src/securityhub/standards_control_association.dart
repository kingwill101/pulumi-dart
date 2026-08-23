import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_control_association_args.dart';
import 'standards_control_association_state.dart';

/// Resource for managing an AWS Security Hub Standards Control Association.
///
/// Disable/enable Security Hub security control in the standard.
///
/// The `aws.securityhub.StandardsControlAssociation`, similarly to `aws.securityhub.StandardsControl`,
/// behaves differently from normal resources, in that Terraform does not _create_ this resource, but instead "adopts" it
/// into management. When you _delete_ this resource configuration, Terraform "abandons" resource as is and just removes it from the state.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const cisAwsFoundationsBenchmark = new aws.securityhub.StandardsSubscription("cis_aws_foundations_benchmark", {standardsArn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"}, {
///     dependsOn: [example],
/// });
/// const cisAwsFoundationsBenchmarkDisableIam1 = new aws.securityhub.StandardsControlAssociation("cis_aws_foundations_benchmark_disable_iam_1", {
///     standardsArn: cisAwsFoundationsBenchmark.standardsArn,
///     securityControlId: "IAM.1",
///     associationStatus: "DISABLED",
///     updatedReason: "Not needed",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// cis_aws_foundations_benchmark = aws.securityhub.StandardsSubscription("cis_aws_foundations_benchmark", standards_arn="arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// cis_aws_foundations_benchmark_disable_iam1 = aws.securityhub.StandardsControlAssociation("cis_aws_foundations_benchmark_disable_iam_1",
///     standards_arn=cis_aws_foundations_benchmark.standards_arn,
///     security_control_id="IAM.1",
///     association_status="DISABLED",
///     updated_reason="Not needed")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var cisAwsFoundationsBenchmark = new Aws.SecurityHub.StandardsSubscription("cis_aws_foundations_benchmark", new()
///     {
///         StandardsArn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var cisAwsFoundationsBenchmarkDisableIam1 = new Aws.SecurityHub.StandardsControlAssociation("cis_aws_foundations_benchmark_disable_iam_1", new()
///     {
///         StandardsArn = cisAwsFoundationsBenchmark.StandardsArn,
///         SecurityControlId = "IAM.1",
///         AssociationStatus = "DISABLED",
///         UpdatedReason = "Not needed",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cisAwsFoundationsBenchmark, err := securityhub.NewStandardsSubscription(ctx, "cis_aws_foundations_benchmark", &securityhub.StandardsSubscriptionArgs{
/// 			StandardsArn: pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewStandardsControlAssociation(ctx, "cis_aws_foundations_benchmark_disable_iam_1", &securityhub.StandardsControlAssociationArgs{
/// 			StandardsArn:      cisAwsFoundationsBenchmark.StandardsArn,
/// 			SecurityControlId: pulumi.String("IAM.1"),
/// 			AssociationStatus: pulumi.String("DISABLED"),
/// 			UpdatedReason:     pulumi.String("Not needed"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_securityhub_account" "example" {
/// }
/// resource "aws_securityhub_standardssubscription" "cis_aws_foundations_benchmark" {
///   depends_on    = [aws_securityhub_account.example]
///   standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
/// }
/// resource "aws_securityhub_standardscontrolassociation" "cis_aws_foundations_benchmark_disable_iam_1" {
///   standards_arn       = aws_securityhub_standardssubscription.cis_aws_foundations_benchmark.standards_arn
///   security_control_id = "IAM.1"
///   association_status  = "DISABLED"
///   updated_reason      = "Not needed"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.StandardsSubscription;
/// import com.pulumi.aws.securityhub.StandardsSubscriptionArgs;
/// import com.pulumi.aws.securityhub.StandardsControlAssociation;
/// import com.pulumi.aws.securityhub.StandardsControlAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Account("example");
///
///         var cisAwsFoundationsBenchmark = new StandardsSubscription("cisAwsFoundationsBenchmark", StandardsSubscriptionArgs.builder()
///             .standardsArn("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var cisAwsFoundationsBenchmarkDisableIam1 = new StandardsControlAssociation("cisAwsFoundationsBenchmarkDisableIam1", StandardsControlAssociationArgs.builder()
///             .standardsArn(cisAwsFoundationsBenchmark.standardsArn())
///             .securityControlId("IAM.1")
///             .associationStatus("DISABLED")
///             .updatedReason("Not needed")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   cisAwsFoundationsBenchmark:
///     type: aws:securityhub:StandardsSubscription
///     name: cis_aws_foundations_benchmark
///     properties:
///       standardsArn: arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///     options:
///       dependsOn:
///         - ${example}
///   cisAwsFoundationsBenchmarkDisableIam1:
///     type: aws:securityhub:StandardsControlAssociation
///     name: cis_aws_foundations_benchmark_disable_iam_1
///     properties:
///       standardsArn: ${cisAwsFoundationsBenchmark.standardsArn}
///       securityControlId: IAM.1
///       associationStatus: DISABLED
///       updatedReason: Not needed
/// ```
///
///
/// ### Disabling security control in all standards
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const example = new aws.securityhub.Account("example", {});
///     const iam1 = await aws.securityhub.getStandardsControlAssociations({
///         securityControlId: "IAM.1",
///     });
///     const iam1StandardsControlAssociation: aws.securityhub.StandardsControlAssociation[] = [];
///     for (const range of std.toset({
///         input: iam1.standardsControlAssociations.map(__item => __item.standardsArn),
///     }).result.map((v, k) => ({key: k, value: v}))) {
///         iam1StandardsControlAssociation.push(new aws.securityhub.StandardsControlAssociation(`iam_1-${range.key}`, {
///             standardsArn: String(range.key),
///             securityControlId: iam1.securityControlId,
///             associationStatus: "DISABLED",
///             updatedReason: "Not needed",
///         }));
///     }
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.securityhub.Account("example")
/// iam1 = aws.securityhub.get_standards_control_associations(security_control_id="IAM.1")
/// iam1_standards_control_association: list[aws.securityhub.StandardsControlAssociation] = []
/// for iam1_standards_control_association_range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=[__item.standards_arn for __item in iam1.standards_control_associations]).result)]:
///     iam1_standards_control_association.append(aws.securityhub.StandardsControlAssociation(f"iam_1-{iam1_standards_control_association_range['key']}",
///         standards_arn=str(iam1_standards_control_association_range["key"]),
///         security_control_id=iam1.security_control_id,
///         association_status="DISABLED",
///         updated_reason="Not needed"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var iam1 = await Aws.SecurityHub.GetStandardsControlAssociations.InvokeAsync(new()
///     {
///         SecurityControlId = "IAM.1",
///     });
///
///     var iam1StandardsControlAssociation = new List<Aws.SecurityHub.StandardsControlAssociation>();
///     foreach (var range in )
///     {
///         iam1StandardsControlAssociation.Add(new Aws.SecurityHub.StandardsControlAssociation($"iam_1-{range.Key}", new()
///         {
///             StandardsArn = range.Key,
///             SecurityControlId = iam1.SecurityControlId,
///             AssociationStatus = "DISABLED",
///             UpdatedReason = "Not needed",
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// iam1, err := securityhub.GetStandardsControlAssociations(ctx, &securityhub.GetStandardsControlAssociationsArgs{
/// SecurityControlId: "IAM.1",
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var iam1StandardsControlAssociation []*securityhub.StandardsControlAssociation
/// for key0, _ := range []interface{}(std.Toset(ctx, &std.TosetArgs{
/// Input: %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:11,15-64),
/// }, nil).Result) {
/// __res, err := securityhub.NewStandardsControlAssociation(ctx, fmt.Sprintf("iam_1-%v", key0), &securityhub.StandardsControlAssociationArgs{
/// StandardsArn: pulumi.Int(key0),
/// SecurityControlId: pulumi.String(iam1.SecurityControlId),
/// AssociationStatus: pulumi.String("DISABLED"),
/// UpdatedReason: pulumi.String("Not needed"),
/// })
/// if err != nil {
/// return err
/// }
/// iam1StandardsControlAssociation = append(iam1StandardsControlAssociation, __res)
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_securityhub_getstandardscontrolassociations" "iam1" {
///   security_control_id = "IAM.1"
/// }
///
/// resource "aws_securityhub_account" "example" {
/// }
/// resource "aws_securityhub_standardscontrolassociation" "iam_1" {
///   for_each            = toset(data.aws_securityhub_getstandardscontrolassociations.iam1.standards_control_associations[*].standards_arn)
///   standards_arn       = each.key
///   security_control_id = data.aws_securityhub_getstandardscontrolassociations.iam1.security_control_id
///   association_status  = "DISABLED"
///   updated_reason      = "Not needed"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.SecurityhubFunctions;
/// import com.pulumi.aws.securityhub.inputs.GetStandardsControlAssociationsArgs;
/// import com.pulumi.aws.securityhub.StandardsControlAssociation;
/// import com.pulumi.aws.securityhub.StandardsControlAssociationArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Account("example");
///
///         final var iam1 = SecurityhubFunctions.getStandardsControlAssociations(GetStandardsControlAssociationsArgs.builder()
///             .securityControlId("IAM.1")
///             .build());
///
///         for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(com.pulumi.std.inputs.TosetArgs.builder()
///             .input(iam1.standardsControlAssociations().stream().map(element -> element.standardsArn()).collect(toList()))
///             .build()).result())) {
///             new StandardsControlAssociation("iam1StandardsControlAssociation-" + range.key(), StandardsControlAssociationArgs.builder()
///                 .standardsArn(range.key())
///                 .securityControlId(iam1.securityControlId())
///                 .associationStatus("DISABLED")
///                 .updatedReason("Not needed")
///                 .build());
///         }
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   iam1StandardsControlAssociation:
///     type: aws:securityhub:StandardsControlAssociation
///     name: iam_1
///     properties:
///       standardsArn: ${range.key}
///       securityControlId: ${iam1.securityControlId}
///       associationStatus: DISABLED
///       updatedReason: Not needed
///     options: {}
/// variables:
///   iam1:
///     fn::invoke:
///       function: aws:securityhub:getStandardsControlAssociations
///       arguments:
///         securityControlId: IAM.1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `securityControlId` (String) Security control ID.
/// * `standardsArn` (String) Standards ARN.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Hub standards control associations using `securityControlId` and `standardsArn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsControlAssociation:StandardsControlAssociation example IAM.1,arn:aws:securityhub:us-east-1:123456789012:control/cis-aws-foundations-benchmark/v/1.2.0/1.10
/// ```
class StandardsControlAssociation extends pulumi.CustomResource {
  /// The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> associationStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The unique identifier for the security control whose enablement status you want to update.
  late final pulumi.Output<String> securityControlId;
  /// The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> standardsArn;
  /// The reason for updating the control's enablement status in the standard. Required when `associationStatus` is `DISABLED`.
  late final pulumi.Output<String?> updatedReason;

  /// Creates a new [StandardsControlAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardsControlAssociation]. {@macro pulumi_securityhub_standards_control_association_standards_control_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardsControlAssociation(
    String name, {
    StandardsControlAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControlAssociation:StandardsControlAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationStatus = registerOutput<String>('associationStatus');
    region = registerOutput<String>('region');
    securityControlId = registerOutput<String>('securityControlId');
    standardsArn = registerOutput<String>('standardsArn');
    updatedReason = registerOutput<String?>('updatedReason');
  }

  /// Gets an existing [StandardsControlAssociation] resource's state with the given [name] and [id].
  static StandardsControlAssociation get(
    String name,
    pulumi.Input<String> id, {
    StandardsControlAssociationState? state,
  }) {
    return StandardsControlAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StandardsControlAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControlAssociation:StandardsControlAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationStatus = registerOutput<String>('associationStatus');
    region = registerOutput<String>('region');
    securityControlId = registerOutput<String>('securityControlId');
    standardsArn = registerOutput<String>('standardsArn');
    updatedReason = registerOutput<String?>('updatedReason');
  }
}
