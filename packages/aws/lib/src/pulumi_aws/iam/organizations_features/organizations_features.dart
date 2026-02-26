import 'package:pulumi/pulumi.dart';
import 'organizations_features_args.dart';

/// Manages centralized root access features across AWS member accounts managed using AWS Organizations. More information about managing root access in IAM can be found in the [Centralize root access for member accounts](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-enable-root-access.html).
///
/// > **NOTE:** The AWS account utilizing this resource must be an Organizations management account. Also, you must enable trusted access for AWS Identity and Access Management in AWS Organizations.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
/// awsServiceAccessPrincipals: ["iam.amazonaws.com"],
/// featureSet: "ALL",
/// });
/// const exampleOrganizationsFeatures = new aws.iam.OrganizationsFeatures("example", {enabledFeatures: [
/// "RootCredentialsManagement",
/// "RootSessions",
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
/// aws_service_access_principals=["iam.amazonaws.com"],
/// feature_set="ALL")
/// example_organizations_features = aws.iam.OrganizationsFeatures("example", enabled_features=[
/// "RootCredentialsManagement",
/// "RootSessions",
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
/// var example = new Aws.Organizations.Organization("example", new()
/// {
/// AwsServiceAccessPrincipals = new[]
/// {
/// "iam.amazonaws.com",
/// },
/// FeatureSet = "ALL",
/// });
///
/// var exampleOrganizationsFeatures = new Aws.Iam.OrganizationsFeatures("example", new()
/// {
/// EnabledFeatures = new[]
/// {
/// "RootCredentialsManagement",
/// "RootSessions",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// AwsServiceAccessPrincipals: pulumi.StringArray{
/// pulumi.String("iam.amazonaws.com"),
/// },
/// FeatureSet: pulumi.String("ALL"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewOrganizationsFeatures(ctx, "example", &iam.OrganizationsFeaturesArgs{
/// EnabledFeatures: pulumi.StringArray{
/// pulumi.String("RootCredentialsManagement"),
/// pulumi.String("RootSessions"),
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
/// import com.pulumi.aws.organizations.Organization;
/// import com.pulumi.aws.organizations.OrganizationArgs;
/// import com.pulumi.aws.iam.OrganizationsFeatures;
/// import com.pulumi.aws.iam.OrganizationsFeaturesArgs;
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
/// var example = new Organization("example", OrganizationArgs.builder()
/// .awsServiceAccessPrincipals("iam.amazonaws.com")
/// .featureSet("ALL")
/// .build());
///
/// var exampleOrganizationsFeatures = new OrganizationsFeatures("exampleOrganizationsFeatures", OrganizationsFeaturesArgs.builder()
/// .enabledFeatures(
/// "RootCredentialsManagement",
/// "RootSessions")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:organizations:Organization
/// properties:
/// awsServiceAccessPrincipals:
/// - iam.amazonaws.com
/// featureSet: ALL
/// exampleOrganizationsFeatures:
/// type: aws:iam:OrganizationsFeatures
/// name: example
/// properties:
/// enabledFeatures:
/// - RootCredentialsManagement
/// - RootSessions
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import root access features using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/organizationsFeatures:OrganizationsFeatures example o-1234567
/// ```
class OrganizationsFeatures extends CustomResource {
  /// List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  late final Output<List<String>> enabledFeatures;

  OrganizationsFeatures(
    String name, {
    OrganizationsFeaturesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/organizationsFeatures:OrganizationsFeatures',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabledFeatures = Output.createUnknown<List<String>>();
  }
}
