import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_args.dart';
import 'configuration_profile_state.dart';
import 'configuration_profile_validator.dart';

/// Provides an AppConfig Configuration Profile resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.ConfigurationProfile("example", {
///     applicationId: exampleAwsAppconfigApplication.id,
///     description: "Example Configuration Profile",
///     name: "example-configuration-profile-tf",
///     locationUri: "hosted",
///     validators: [{
///         content: exampleAwsLambdaFunction.arn,
///         type: "LAMBDA",
///     }],
///     tags: {
///         Type: "AppConfig Configuration Profile",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.ConfigurationProfile("example",
///     application_id=example_aws_appconfig_application["id"],
///     description="Example Configuration Profile",
///     name="example-configuration-profile-tf",
///     location_uri="hosted",
///     validators=[{
///         "content": example_aws_lambda_function["arn"],
///         "type": "LAMBDA",
///     }],
///     tags={
///         "Type": "AppConfig Configuration Profile",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppConfig.ConfigurationProfile("example", new()
///     {
///         ApplicationId = exampleAwsAppconfigApplication.Id,
///         Description = "Example Configuration Profile",
///         Name = "example-configuration-profile-tf",
///         LocationUri = "hosted",
///         Validators = new[]
///         {
///             new Aws.AppConfig.Inputs.ConfigurationProfileValidatorArgs
///             {
///                 Content = exampleAwsLambdaFunction.Arn,
///                 Type = "LAMBDA",
///             },
///         },
///         Tags =
///         {
///             { "Type", "AppConfig Configuration Profile" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.NewConfigurationProfile(ctx, "example", &appconfig.ConfigurationProfileArgs{
/// 			ApplicationId: pulumi.Any(exampleAwsAppconfigApplication.Id),
/// 			Description:   pulumi.String("Example Configuration Profile"),
/// 			Name:          pulumi.String("example-configuration-profile-tf"),
/// 			LocationUri:   pulumi.String("hosted"),
/// 			Validators: appconfig.ConfigurationProfileValidatorArray{
/// 				&appconfig.ConfigurationProfileValidatorArgs{
/// 					Content: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 					Type:    pulumi.String("LAMBDA"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Type": pulumi.String("AppConfig Configuration Profile"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.ConfigurationProfile;
/// import com.pulumi.aws.appconfig.ConfigurationProfileArgs;
/// import com.pulumi.aws.appconfig.inputs.ConfigurationProfileValidatorArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ConfigurationProfile("example", ConfigurationProfileArgs.builder()
///             .applicationId(exampleAwsAppconfigApplication.id())
///             .description("Example Configuration Profile")
///             .name("example-configuration-profile-tf")
///             .locationUri("hosted")
///             .validators(ConfigurationProfileValidatorArgs.builder()
///                 .content(exampleAwsLambdaFunction.arn())
///                 .type("LAMBDA")
///                 .build())
///             .tags(Map.of("Type", "AppConfig Configuration Profile"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appconfig:ConfigurationProfile
///     properties:
///       applicationId: ${exampleAwsAppconfigApplication.id}
///       description: Example Configuration Profile
///       name: example-configuration-profile-tf
///       locationUri: hosted
///       validators:
///         - content: ${exampleAwsLambdaFunction.arn}
///           type: LAMBDA
///       tags:
///         Type: AppConfig Configuration Profile
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Configuration Profiles using the configuration profile ID and application ID separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/configurationProfile:ConfigurationProfile example 71abcde:11xxxxx
/// ```
class ConfigurationProfile extends pulumi.CustomResource {
  /// Application ID. Must be between 4 and 7 characters in length.
  late final pulumi.Output<String> applicationId;
  /// ARN of the AppConfig Configuration Profile.
  late final pulumi.Output<String> arn;
  /// The configuration profile ID.
  late final pulumi.Output<String> configurationProfileId;
  /// Description of the configuration profile. Can be at most 1024 characters.
  late final pulumi.Output<String?> description;
  /// The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  late final pulumi.Output<String?> kmsKeyIdentifier;
  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  late final pulumi.Output<String> locationUri;
  /// Name for the configuration profile. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  late final pulumi.Output<String?> retrievalRoleArn;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  late final pulumi.Output<String?> type;
  /// Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  late final pulumi.Output<List<ConfigurationProfileValidator>?> validators;

  /// Creates a new [ConfigurationProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationProfile]. {@macro pulumi_appconfig_configuration_profile_configuration_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationProfile(
    String name, {
    ConfigurationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/configurationProfile:ConfigurationProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId = registerOutput<String>('configurationProfileId');
    this.description = registerOutput<String?>('description');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retrievalRoleArn = registerOutput<String?>('retrievalRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.validators = registerOutput<List<ConfigurationProfileValidator>?>('validators');
  }

  /// Gets an existing [ConfigurationProfile] resource's state with the given [name] and [id].
  static ConfigurationProfile get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationProfileState? state,
  }) {
    return ConfigurationProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConfigurationProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/configurationProfile:ConfigurationProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId = registerOutput<String>('configurationProfileId');
    this.description = registerOutput<String?>('description');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retrievalRoleArn = registerOutput<String?>('retrievalRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.validators = registerOutput<List<ConfigurationProfileValidator>?>('validators');
  }
}
