import 'package:pulumi/pulumi.dart';
import 'service_linked_role_args.dart';

/// Provides an [IAM service-linked role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const elasticbeanstalk = new aws.iam.ServiceLinkedRole("elasticbeanstalk", {awsServiceName: "elasticbeanstalk.amazonaws.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// elasticbeanstalk = aws.iam.ServiceLinkedRole("elasticbeanstalk", aws_service_name="elasticbeanstalk.amazonaws.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var elasticbeanstalk = new Aws.Iam.ServiceLinkedRole("elasticbeanstalk", new()
/// {
/// AwsServiceName = "elasticbeanstalk.amazonaws.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewServiceLinkedRole(ctx, "elasticbeanstalk", &iam.ServiceLinkedRoleArgs{
/// AwsServiceName: pulumi.String("elasticbeanstalk.amazonaws.com"),
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
/// import com.pulumi.aws.iam.ServiceLinkedRole;
/// import com.pulumi.aws.iam.ServiceLinkedRoleArgs;
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
/// var elasticbeanstalk = new ServiceLinkedRole("elasticbeanstalk", ServiceLinkedRoleArgs.builder()
/// .awsServiceName("elasticbeanstalk.amazonaws.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// elasticbeanstalk:
/// type: aws:iam:ServiceLinkedRole
/// properties:
/// awsServiceName: elasticbeanstalk.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IAM service-linked role.
///
///
/// Using `pulumi import`, import IAM service-linked roles using role ARN. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serviceLinkedRole:ServiceLinkedRole elasticbeanstalk arn:aws:iam::123456789012:role/aws-service-role/elasticbeanstalk.amazonaws.com/AWSServiceRoleForElasticBeanstalk
/// ```
class ServiceLinkedRole extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the role.
  late final Output<String> arn;

  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  late final Output<String> awsServiceName;

  /// The creation date of the IAM role.
  late final Output<String> createDate;

  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  late final Output<String?> customSuffix;

  /// The description of the role.
  late final Output<String?> description;

  /// The name of the role.
  late final Output<String> name;

  /// The path of the role.
  late final Output<String> path;

  /// Key-value mapping of tags for the IAM role. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The stable and unique string identifying the role.
  late final Output<String> uniqueId;

  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/serviceLinkedRole:ServiceLinkedRole',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsServiceName = Output.createUnknown<String>();
    this.createDate = Output.createUnknown<String>();
    this.customSuffix = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.path = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uniqueId = Output.createUnknown<String>();
  }
}
