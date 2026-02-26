import 'package:pulumi/pulumi.dart';
import 'studio_session_mapping_args.dart';

/// Provides an Elastic MapReduce Studio Session Mapping.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.StudioSessionMapping("example", {
/// studioId: exampleAwsEmrStudio.id,
/// identityType: "USER",
/// identityId: "example",
/// sessionPolicyArn: exampleAwsIamPolicy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.StudioSessionMapping("example",
/// studio_id=example_aws_emr_studio["id"],
/// identity_type="USER",
/// identity_id="example",
/// session_policy_arn=example_aws_iam_policy["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Emr.StudioSessionMapping("example", new()
/// {
/// StudioId = exampleAwsEmrStudio.Id,
/// IdentityType = "USER",
/// IdentityId = "example",
/// SessionPolicyArn = exampleAwsIamPolicy.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := emr.NewStudioSessionMapping(ctx, "example", &emr.StudioSessionMappingArgs{
/// StudioId:         pulumi.Any(exampleAwsEmrStudio.Id),
/// IdentityType:     pulumi.String("USER"),
/// IdentityId:       pulumi.String("example"),
/// SessionPolicyArn: pulumi.Any(exampleAwsIamPolicy.Arn),
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
/// import com.pulumi.aws.emr.StudioSessionMapping;
/// import com.pulumi.aws.emr.StudioSessionMappingArgs;
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
/// var example = new StudioSessionMapping("example", StudioSessionMappingArgs.builder()
/// .studioId(exampleAwsEmrStudio.id())
/// .identityType("USER")
/// .identityId("example")
/// .sessionPolicyArn(exampleAwsIamPolicy.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:emr:StudioSessionMapping
/// properties:
/// studioId: ${exampleAwsEmrStudio.id}
/// identityType: USER
/// identityId: example
/// sessionPolicyArn: ${exampleAwsIamPolicy.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EMR studio session mappings using `studio-id:identity-type:identity-id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/studioSessionMapping:StudioSessionMapping example es-xxxxx:USER:xxxxx-xxx-xxx
/// ```
class StudioSessionMapping extends CustomResource {
  /// The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  late final Output<String> identityId;

  /// The name of the user or group from the Amazon Web Services SSO Identity Store.
  late final Output<String> identityName;

  /// Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  late final Output<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  late final Output<String> sessionPolicyArn;

  /// The ID of the Amazon EMR Studio to which the user or group will be mapped.
  late final Output<String> studioId;

  StudioSessionMapping(
    String name, {
    StudioSessionMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/studioSessionMapping:StudioSessionMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identityId = Output.createUnknown<String>();
    this.identityName = Output.createUnknown<String>();
    this.identityType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sessionPolicyArn = Output.createUnknown<String>();
    this.studioId = Output.createUnknown<String>();
  }
}
