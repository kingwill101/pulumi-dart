import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_configuration_args.dart';

/// Provides a resource to manage AWS EMR Security Configurations
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.emr.SecurityConfiguration("foo", {
///     name: "emrsc_other",
///     configuration: `{
///   \\"EncryptionConfiguration\\": {
///     \\"AtRestEncryptionConfiguration\\": {
///       \\"S3EncryptionConfiguration\\": {
///         \\"EncryptionMode\\": \\"SSE-S3\\"
///       },
///       \\"LocalDiskEncryptionConfiguration\\": {
///         \\"EncryptionKeyProviderType\\": \\"AwsKms\\",
///         \\"AwsKmsKey\\": \\"arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\\"
///       }
///     },
///     \\"EnableInTransitEncryption\\": false,
///     \\"EnableAtRestEncryption\\": true
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.emr.SecurityConfiguration("foo",
///     name="emrsc_other",
///     configuration="""{
///   \"EncryptionConfiguration\": {
///     \"AtRestEncryptionConfiguration\": {
///       \"S3EncryptionConfiguration\": {
///         \"EncryptionMode\": \"SSE-S3\"
///       },
///       \"LocalDiskEncryptionConfiguration\": {
///         \"EncryptionKeyProviderType\": \"AwsKms\",
///         \"AwsKmsKey\": \"arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\"
///       }
///     },
///     \"EnableInTransitEncryption\": false,
///     \"EnableAtRestEncryption\": true
///   }
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Emr.SecurityConfiguration("foo", new()
///     {
///         Name = "emrsc_other",
///         Configuration = @"{
///   \""EncryptionConfiguration\"": {
///     \""AtRestEncryptionConfiguration\"": {
///       \""S3EncryptionConfiguration\"": {
///         \""EncryptionMode\"": \""SSE-S3\""
///       },
///       \""LocalDiskEncryptionConfiguration\"": {
///         \""EncryptionKeyProviderType\"": \""AwsKms\"",
///         \""AwsKmsKey\"": \""arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\""
///       }
///     },
///     \""EnableInTransitEncryption\"": false,
///     \""EnableAtRestEncryption\"": true
///   }
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewSecurityConfiguration(ctx, "foo", &emr.SecurityConfigurationArgs{
/// 			Name: pulumi.String("emrsc_other"),
/// 			Configuration: pulumi.String(`{
///   \"EncryptionConfiguration\": {
///     \"AtRestEncryptionConfiguration\": {
///       \"S3EncryptionConfiguration\": {
///         \"EncryptionMode\": \"SSE-S3\"
///       },
///       \"LocalDiskEncryptionConfiguration\": {
///         \"EncryptionKeyProviderType\": \"AwsKms\",
///         \"AwsKmsKey\": \"arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\"
///       }
///     },
///     \"EnableInTransitEncryption\": false,
///     \"EnableAtRestEncryption\": true
///   }
/// }
/// `),
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
/// import com.pulumi.aws.emr.SecurityConfiguration;
/// import com.pulumi.aws.emr.SecurityConfigurationArgs;
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
///         var foo = new SecurityConfiguration("foo", SecurityConfigurationArgs.builder()
///             .name("emrsc_other")
///             .configuration("""
/// {
///   \"EncryptionConfiguration\": {
///     \"AtRestEncryptionConfiguration\": {
///       \"S3EncryptionConfiguration\": {
///         \"EncryptionMode\": \"SSE-S3\"
///       },
///       \"LocalDiskEncryptionConfiguration\": {
///         \"EncryptionKeyProviderType\": \"AwsKms\",
///         \"AwsKmsKey\": \"arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\"
///       }
///     },
///     \"EnableInTransitEncryption\": false,
///     \"EnableAtRestEncryption\": true
///   }
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:emr:SecurityConfiguration
///     properties:
///       name: emrsc_other
///       configuration: |
///         {
///           \"EncryptionConfiguration\": {
///             \"AtRestEncryptionConfiguration\": {
///               \"S3EncryptionConfiguration\": {
///                 \"EncryptionMode\": \"SSE-S3\"
///               },
///               \"LocalDiskEncryptionConfiguration\": {
///                 \"EncryptionKeyProviderType\": \"AwsKms\",
///                 \"AwsKmsKey\": \"arn:aws:kms:us-west-2:187416307283:alias/my_emr_test_key\"
///               }
///             },
///             \"EnableInTransitEncryption\": false,
///             \"EnableAtRestEncryption\": true
///           }
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Security Configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/securityConfiguration:SecurityConfiguration sc example-sc-name
/// ```
class SecurityConfiguration extends pulumi.CustomResource {
  /// A JSON formatted Security Configuration
  late final pulumi.Output<String> configuration;

  /// Date the Security Configuration was created
  late final pulumi.Output<String> creationDate;

  /// The name of the EMR Security Configuration. By default generated by this provider.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [SecurityConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityConfiguration]. {@macro pulumi_emr_security_configuration_security_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityConfiguration(
    String name, {
    SecurityConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:emr/securityConfiguration:SecurityConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configuration = registerOutput<String>('configuration');
    this.creationDate = registerOutput<String>('creationDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
  }
}
