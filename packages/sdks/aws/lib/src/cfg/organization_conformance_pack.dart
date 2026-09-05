import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_conformance_pack_args.dart';
import 'organization_conformance_pack_input_parameter.dart';
import 'organization_conformance_pack_state.dart';

/// Manages a Config Organization Conformance Pack. More information can be found in the [Managing Conformance Packs Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/conformance-pack-organization-apis.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. Example conformance pack templates may be found in the [AWS Config Rules Repository](https://github.com/awslabs/aws-config-rules/tree/master/aws-config-conformance-packs).
///
/// &gt; **NOTE:** This resource must be created in the Organization master account or a delegated administrator account, and the Organization must have all features enabled. Every Organization account except those configured in the `excludedAccounts` argument must have a Configuration Recorder with proper IAM permissions before the Organization Conformance Pack will successfully create or update. See also the `aws.cfg.Recorder` resource.
///
/// ## Example Usage
///
/// ### Using Template Body
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOrganization = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["config-multiaccountsetup.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const example = new aws.cfg.OrganizationConformancePack("example", {
///     inputParameters: [{
///         parameterName: "AccessKeysRotatedParameterMaxAccessKeyAge",
///         parameterValue: "90",
///     }],
///     name: "example",
///     templateBody: `Parameters:
///   AccessKeysRotatedParameterMaxAccessKeyAge:
///     Type: String
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// `,
/// }, {
///     dependsOn: [
///         exampleAwsConfigConfigurationRecorder,
///         exampleOrganization,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_organization = aws.organizations.Organization("example",
///     aws_service_access_principals=["config-multiaccountsetup.amazonaws.com"],
///     feature_set="ALL")
/// example = aws.cfg.OrganizationConformancePack("example",
///     input_parameters=[{
///         "parameter_name": "AccessKeysRotatedParameterMaxAccessKeyAge",
///         "parameter_value": "90",
///     }],
///     name="example",
///     template_body="""Parameters:
///   AccessKeysRotatedParameterMaxAccessKeyAge:
///     Type: String
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// """,
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_aws_config_configuration_recorder,
///             example_organization,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOrganization = new Aws.Organizations.Organization("example", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "config-multiaccountsetup.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var example = new Aws.Cfg.OrganizationConformancePack("example", new()
///     {
///         InputParameters = new[]
///         {
///             new Aws.Cfg.Inputs.OrganizationConformancePackInputParameterArgs
///             {
///                 ParameterName = "AccessKeysRotatedParameterMaxAccessKeyAge",
///                 ParameterValue = "90",
///             },
///         },
///         Name = "example",
///         TemplateBody = @"Parameters:
///   AccessKeysRotatedParameterMaxAccessKeyAge:
///     Type: String
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsConfigConfigurationRecorder,
///             exampleOrganization,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleOrganization, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("config-multiaccountsetup.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewOrganizationConformancePack(ctx, "example", &cfg.OrganizationConformancePackArgs{
/// 			InputParameters: cfg.OrganizationConformancePackInputParameterArray{
/// 				&cfg.OrganizationConformancePackInputParameterArgs{
/// 					ParameterName:  pulumi.String("AccessKeysRotatedParameterMaxAccessKeyAge"),
/// 					ParameterValue: pulumi.String("90"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 			TemplateBody: pulumi.String(`Parameters:
///   AccessKeysRotatedParameterMaxAccessKeyAge:
///     Type: String
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// `),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsConfigConfigurationRecorder,
/// 			exampleOrganization,
/// 		}))
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
/// resource "aws_cfg_organizationconformancepack" "example" {
///   depends_on = [exampleAwsConfigConfigurationRecorder, aws_organizations_organization.example]
///   input_parameters {
///     parameter_name  = "AccessKeysRotatedParameterMaxAccessKeyAge"
///     parameter_value = "90"
///   }
///   name          = "example"
///   template_body = "Parameters:\n  AccessKeysRotatedParameterMaxAccessKeyAge:\n    Type: String\nResources:\n  IAMPasswordPolicy:\n    Properties:\n      ConfigRuleName: IAMPasswordPolicy\n      Source:\n        Owner: AWS\n        SourceIdentifier: IAM_PASSWORD_POLICY\n    Type: AWS::Config::ConfigRule\n"
/// }
/// resource "aws_organizations_organization" "example" {
///   aws_service_access_principals = ["config-multiaccountsetup.amazonaws.com"]
///   feature_set                   = "ALL"
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
/// import com.pulumi.aws.cfg.OrganizationConformancePack;
/// import com.pulumi.aws.cfg.OrganizationConformancePackArgs;
/// import com.pulumi.aws.cfg.inputs.OrganizationConformancePackInputParameterArgs;
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
///         var exampleOrganization = new Organization("exampleOrganization", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals("config-multiaccountsetup.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var example = new OrganizationConformancePack("example", OrganizationConformancePackArgs.builder()
///             .inputParameters(OrganizationConformancePackInputParameterArgs.builder()
///                 .parameterName("AccessKeysRotatedParameterMaxAccessKeyAge")
///                 .parameterValue("90")
///                 .build())
///             .name("example")
///             .templateBody("""
/// Parameters:
///   AccessKeysRotatedParameterMaxAccessKeyAge:
///     Type: String
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
///             """)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAwsConfigConfigurationRecorder,
///                     exampleOrganization)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:OrganizationConformancePack
///     properties:
///       inputParameters:
///         - parameterName: AccessKeysRotatedParameterMaxAccessKeyAge
///           parameterValue: '90'
///       name: example
///       templateBody: |
///         Parameters:
///           AccessKeysRotatedParameterMaxAccessKeyAge:
///             Type: String
///         Resources:
///           IAMPasswordPolicy:
///             Properties:
///               ConfigRuleName: IAMPasswordPolicy
///               Source:
///                 Owner: AWS
///                 SourceIdentifier: IAM_PASSWORD_POLICY
///             Type: AWS::Config::ConfigRule
///     options:
///       dependsOn:
///         - ${exampleAwsConfigConfigurationRecorder}
///         - ${exampleOrganization}
///   exampleOrganization:
///     type: aws:organizations:Organization
///     name: example
///     properties:
///       awsServiceAccessPrincipals:
///         - config-multiaccountsetup.amazonaws.com
///       featureSet: ALL
/// ```
///
///
/// ### Using Template S3 URI
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOrganization = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["config-multiaccountsetup.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: exampleBucket.id,
///     key: "example-key",
///     content: `Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// `,
/// });
/// const example = new aws.cfg.OrganizationConformancePack("example", {
///     name: "example",
///     templateS3Uri: pulumi.interpolate`s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}`,
/// }, {
///     dependsOn: [
///         exampleAwsConfigConfigurationRecorder,
///         exampleOrganization,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_organization = aws.organizations.Organization("example",
///     aws_service_access_principals=["config-multiaccountsetup.amazonaws.com"],
///     feature_set="ALL")
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example_bucket.id,
///     key="example-key",
///     content="""Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// """)
/// example = aws.cfg.OrganizationConformancePack("example",
///     name="example",
///     template_s3_uri=pulumi.Output.all(
///         bucket=example_bucket.bucket,
///         key=example_bucket_objectv2.key
/// ).apply(lambda resolved_outputs: f"s3://{resolved_outputs['bucket']}/{resolved_outputs['key']}")
/// ,
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_aws_config_configuration_recorder,
///             example_organization,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOrganization = new Aws.Organizations.Organization("example", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "config-multiaccountsetup.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Key = "example-key",
///         Content = @"Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// ",
///     });
///
///     var example = new Aws.Cfg.OrganizationConformancePack("example", new()
///     {
///         Name = "example",
///         TemplateS3Uri = Output.Tuple(exampleBucket.BucketName, exampleBucketObjectv2.Key).Apply(values =>
///         {
///             var bucket = values.Item1;
///             var key = values.Item2;
///             return $"s3://{bucket}/{key}";
///         }),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsConfigConfigurationRecorder,
///             exampleOrganization,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleOrganization, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("config-multiaccountsetup.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: exampleBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("example-key"),
/// 			Content: pulumi.String(`Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewOrganizationConformancePack(ctx, "example", &cfg.OrganizationConformancePackArgs{
/// 			Name: pulumi.String("example"),
/// 			TemplateS3Uri: pulumi.All(exampleBucket.Bucket, exampleBucketObjectv2.Key).ApplyT(func(_args []interface{}) (string, error) {
/// 				bucket := _args[0].(string)
/// 				key := _args[1].(string)
/// 				return fmt.Sprintf("s3://%v/%v", bucket, key), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsConfigConfigurationRecorder,
/// 			exampleOrganization,
/// 		}))
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
/// resource "aws_cfg_organizationconformancepack" "example" {
///   depends_on      = [exampleAwsConfigConfigurationRecorder, aws_organizations_organization.example]
///   name            = "example"
///   template_s3_uri ="s3://${aws_s3_bucket.example.bucket}/${aws_s3_bucketobjectv2.example.key}"
/// }
/// resource "aws_organizations_organization" "example" {
///   aws_service_access_principals = ["config-multiaccountsetup.amazonaws.com"]
///   feature_set                   = "ALL"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketobjectv2" "example" {
///   bucket  = aws_s3_bucket.example.id
///   key     = "example-key"
///   content = "Resources:\n  IAMPasswordPolicy:\n    Properties:\n      ConfigRuleName: IAMPasswordPolicy\n      Source:\n        Owner: AWS\n        SourceIdentifier: IAM_PASSWORD_POLICY\n    Type: AWS::Config::ConfigRule\n"
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.cfg.OrganizationConformancePack;
/// import com.pulumi.aws.cfg.OrganizationConformancePackArgs;
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
///         var exampleOrganization = new Organization("exampleOrganization", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals("config-multiaccountsetup.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(exampleBucket.id())
///             .key("example-key")
///             .content("""
/// Resources:
///   IAMPasswordPolicy:
///     Properties:
///       ConfigRuleName: IAMPasswordPolicy
///       Source:
///         Owner: AWS
///         SourceIdentifier: IAM_PASSWORD_POLICY
///     Type: AWS::Config::ConfigRule
///             """)
///             .build());
///
///         var example = new OrganizationConformancePack("example", OrganizationConformancePackArgs.builder()
///             .name("example")
///             .templateS3Uri(Output.tuple(exampleBucket.bucket(), exampleBucketObjectv2.key()).applyValue(values -> {
///                 var bucket = values.t1;
///                 var key = values.t2;
///                 return String.format("s3://%s/%s", bucket,key);
///             }))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAwsConfigConfigurationRecorder,
///                     exampleOrganization)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:OrganizationConformancePack
///     properties:
///       name: example
///       templateS3Uri: s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}
///     options:
///       dependsOn:
///         - ${exampleAwsConfigConfigurationRecorder}
///         - ${exampleOrganization}
///   exampleOrganization:
///     type: aws:organizations:Organization
///     name: example
///     properties:
///       awsServiceAccessPrincipals:
///         - config-multiaccountsetup.amazonaws.com
///       featureSet: ALL
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       key: example-key
///       content: |
///         Resources:
///           IAMPasswordPolicy:
///             Properties:
///               ConfigRuleName: IAMPasswordPolicy
///               Source:
///                 Owner: AWS
///                 SourceIdentifier: IAM_PASSWORD_POLICY
///             Type: AWS::Config::ConfigRule
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the configuration recorder.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Config Organization Conformance Packs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationConformancePack:OrganizationConformancePack example example
/// ```
class OrganizationConformancePack extends pulumi.CustomResource {
  /// ARN of the organization conformance pack.
  late final pulumi.Output<String> arn;
  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with `awsconfigconforms` prefix. Maximum length of 63.
  late final pulumi.Output<String?> deliveryS3Bucket;
  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  late final pulumi.Output<String?> deliveryS3KeyPrefix;
  /// Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts.
  late final pulumi.Output<List<String>?> excludedAccounts;
  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `templateBody` or in the template stored in Amazon S3 if using `templateS3Uri`.
  late final pulumi.Output<List<OrganizationConformancePackInputParameter>?> inputParameters;
  /// The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> templateBody;
  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> templateS3Uri;

  /// Creates a new [OrganizationConformancePack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationConformancePack]. {@macro pulumi_cfg_organization_conformance_pack_organization_conformance_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationConformancePack(
    String name, {
    OrganizationConformancePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationConformancePack:OrganizationConformancePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    excludedAccounts = registerOutput<List<String>?>('excludedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    inputParameters = registerOutput<List<OrganizationConformancePackInputParameter>?>('inputParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationConformancePackInputParameter>(guardedValue, (value) => OrganizationConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    templateBody = registerOutput<String?>('templateBody');
    templateS3Uri = registerOutput<String?>('templateS3Uri');
  }

  /// Gets an existing [OrganizationConformancePack] resource's state with the given [name] and [id].
  static OrganizationConformancePack get(
    String name,
    pulumi.Input<String> id, {
    OrganizationConformancePackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationConformancePack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationConformancePack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationConformancePack:OrganizationConformancePack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    excludedAccounts = registerOutput<List<String>?>('excludedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    inputParameters = registerOutput<List<OrganizationConformancePackInputParameter>?>('inputParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationConformancePackInputParameter>(guardedValue, (value) => OrganizationConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    templateBody = registerOutput<String?>('templateBody');
    templateS3Uri = registerOutput<String?>('templateS3Uri');
  }

  /// Creates a typed reference to an existing [OrganizationConformancePack] resource.
  OrganizationConformancePack.reference(String urn)
    : super(
        'aws:cfg/organizationConformancePack:OrganizationConformancePack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    excludedAccounts = registerOutput<List<String>?>('excludedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    inputParameters = registerOutput<List<OrganizationConformancePackInputParameter>?>('inputParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationConformancePackInputParameter>(guardedValue, (value) => OrganizationConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    templateBody = registerOutput<String?>('templateBody');
    templateS3Uri = registerOutput<String?>('templateS3Uri');
  }
}
