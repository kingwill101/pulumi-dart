import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_appversion_lifecycle.dart';
import 'application_args.dart';
import 'application_state.dart';

/// Provides an Elastic Beanstalk Application Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// This resource creates an application that has one configuration template named
/// `default`, and no application versions
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tftest = new aws.elasticbeanstalk.Application("tftest", {
///     appversionLifecycle: {
///         serviceRole: beanstalkService.arn,
///         maxCount: 128,
///         deleteSourceFromS3: true,
///     },
///     name: "tf-test-name",
///     description: "tf-test-desc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// tftest = aws.elasticbeanstalk.Application("tftest",
///     appversion_lifecycle={
///         "service_role": beanstalk_service["arn"],
///         "max_count": 128,
///         "delete_source_from_s3": True,
///     },
///     name="tf-test-name",
///     description="tf-test-desc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tftest = new Aws.ElasticBeanstalk.Application("tftest", new()
///     {
///         AppversionLifecycle = new Aws.ElasticBeanstalk.Inputs.ApplicationAppversionLifecycleArgs
///         {
///             ServiceRole = beanstalkService.Arn,
///             MaxCount = 128,
///             DeleteSourceFromS3 = true,
///         },
///         Name = "tf-test-name",
///         Description = "tf-test-desc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticbeanstalk.NewApplication(ctx, "tftest", &elasticbeanstalk.ApplicationArgs{
/// 			AppversionLifecycle: &elasticbeanstalk.ApplicationAppversionLifecycleArgs{
/// 				ServiceRole:        pulumi.Any(beanstalkService.Arn),
/// 				MaxCount:           pulumi.Int(128),
/// 				DeleteSourceFromS3: pulumi.Bool(true),
/// 			},
/// 			Name:        pulumi.String("tf-test-name"),
/// 			Description: pulumi.String("tf-test-desc"),
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
/// resource "aws_elasticbeanstalk_application" "tftest" {
///   appversion_lifecycle = {
///     service_role          = beanstalkService.arn
///     max_count             = 128
///     delete_source_from_s3 = true
///   }
///   name        = "tf-test-name"
///   description = "tf-test-desc"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticbeanstalk.Application;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationArgs;
/// import com.pulumi.aws.elasticbeanstalk.inputs.ApplicationAppversionLifecycleArgs;
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
///         var tftest = new Application("tftest", ApplicationArgs.builder()
///             .appversionLifecycle(ApplicationAppversionLifecycleArgs.builder()
///                 .serviceRole(beanstalkService.arn())
///                 .maxCount(128)
///                 .deleteSourceFromS3(true)
///                 .build())
///             .name("tf-test-name")
///             .description("tf-test-desc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tftest:
///     type: aws:elasticbeanstalk:Application
///     properties:
///       appversionLifecycle:
///         serviceRole: ${beanstalkService.arn}
///         maxCount: 128
///         deleteSourceFromS3: true
///       name: tf-test-name
///       description: tf-test-desc
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Beanstalk Applications using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticbeanstalk/application:Application tf_test tf-test-name
/// ```
class Application extends pulumi.CustomResource {
  late final pulumi.Output<ApplicationAppversionLifecycle?> appversionLifecycle;
  /// The ARN assigned by AWS for this Elastic Beanstalk Application.
  late final pulumi.Output<String> arn;
  /// Short description of the application
  late final pulumi.Output<String?> description;
  /// The name of the application, must be unique within your account
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_elasticbeanstalk_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    appversionLifecycle = registerOutput<ApplicationAppversionLifecycle?>('appversionLifecycle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAppversionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appversionLifecycle = registerOutput<ApplicationAppversionLifecycle?>('appversionLifecycle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAppversionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Application] resource.
  Application.reference(String urn)
    : super(
        'aws:elasticbeanstalk/application:Application',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appversionLifecycle = registerOutput<ApplicationAppversionLifecycle?>('appversionLifecycle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAppversionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
