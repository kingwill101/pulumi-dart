import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_args.dart';
import 'application_version_state.dart';

/// Provides an Elastic Beanstalk Application Version Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// This resource creates a Beanstalk Application Version that can be deployed to a Beanstalk
/// Environment.
///
/// > **NOTE on Application Version Resource:**  When using the Application Version resource with multiple
/// Elastic Beanstalk Environments it is possible that an error may be returned
/// when attempting to delete an Application Version while it is still in use by a different environment.
/// To work around this you can either create each environment in a separate AWS account or create your `aws.elasticbeanstalk.ApplicationVersion` resources with a unique names in your Elastic Beanstalk Application. For example &lt;revision&gt;-&lt;environment&gt;.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.s3.Bucket("default", {bucket: "tftest.applicationversion.bucket"});
/// const defaultBucketObjectv2 = new aws.s3.BucketObjectv2("default", {
///     bucket: _default.id,
///     key: "beanstalk/go-v1.zip",
///     source: new pulumi.asset.FileAsset("go-v1.zip"),
/// });
/// const defaultApplication = new aws.elasticbeanstalk.Application("default", {
///     name: "tf-test-name",
///     description: "tf-test-desc",
/// });
/// const defaultApplicationVersion = new aws.elasticbeanstalk.ApplicationVersion("default", {
///     name: "tf-test-version-label",
///     application: "tf-test-name",
///     description: "application version",
///     bucket: _default.id,
///     key: defaultBucketObjectv2.key,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.s3.Bucket("default", bucket="tftest.applicationversion.bucket")
/// default_bucket_objectv2 = aws.s3.BucketObjectv2("default",
///     bucket=default.id,
///     key="beanstalk/go-v1.zip",
///     source=pulumi.FileAsset("go-v1.zip"))
/// default_application = aws.elasticbeanstalk.Application("default",
///     name="tf-test-name",
///     description="tf-test-desc")
/// default_application_version = aws.elasticbeanstalk.ApplicationVersion("default",
///     name="tf-test-version-label",
///     application="tf-test-name",
///     description="application version",
///     bucket=default.id,
///     key=default_bucket_objectv2.key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.S3.Bucket("default", new()
///     {
///         BucketName = "tftest.applicationversion.bucket",
///     });
///
///     var defaultBucketObjectv2 = new Aws.S3.BucketObjectv2("default", new()
///     {
///         Bucket = @default.Id,
///         Key = "beanstalk/go-v1.zip",
///         Source = new FileAsset("go-v1.zip"),
///     });
///
///     var defaultApplication = new Aws.ElasticBeanstalk.Application("default", new()
///     {
///         Name = "tf-test-name",
///         Description = "tf-test-desc",
///     });
///
///     var defaultApplicationVersion = new Aws.ElasticBeanstalk.ApplicationVersion("default", new()
///     {
///         Name = "tf-test-version-label",
///         Application = "tf-test-name",
///         Description = "application version",
///         Bucket = @default.Id,
///         Key = defaultBucketObjectv2.Key,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := s3.NewBucket(ctx, "default", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tftest.applicationversion.bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "default", &s3.BucketObjectv2Args{
/// 			Bucket: _default.ID(),
/// 			Key:    pulumi.String("beanstalk/go-v1.zip"),
/// 			Source: pulumi.NewFileAsset("go-v1.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticbeanstalk.NewApplication(ctx, "default", &elasticbeanstalk.ApplicationArgs{
/// 			Name:        pulumi.String("tf-test-name"),
/// 			Description: pulumi.String("tf-test-desc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticbeanstalk.NewApplicationVersion(ctx, "default", &elasticbeanstalk.ApplicationVersionArgs{
/// 			Name:        pulumi.String("tf-test-version-label"),
/// 			Application: pulumi.Any("tf-test-name"),
/// 			Description: pulumi.String("application version"),
/// 			Bucket:      _default.ID(),
/// 			Key:         defaultBucketObjectv2.Key,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.elasticbeanstalk.Application;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationArgs;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationVersion;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationVersionArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .bucket("tftest.applicationversion.bucket")
///             .build());
///
///         var defaultBucketObjectv2 = new BucketObjectv2("defaultBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(default_.id())
///             .key("beanstalk/go-v1.zip")
///             .source(new FileAsset("go-v1.zip"))
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .name("tf-test-name")
///             .description("tf-test-desc")
///             .build());
///
///         var defaultApplicationVersion = new ApplicationVersion("defaultApplicationVersion", ApplicationVersionArgs.builder()
///             .name("tf-test-version-label")
///             .application("tf-test-name")
///             .description("application version")
///             .bucket(default_.id())
///             .key(defaultBucketObjectv2.key())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tftest.applicationversion.bucket
///   defaultBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: default
///     properties:
///       bucket: ${default.id}
///       key: beanstalk/go-v1.zip
///       source:
///         fn::FileAsset: go-v1.zip
///   defaultApplication:
///     type: aws:elasticbeanstalk:Application
///     name: default
///     properties:
///       name: tf-test-name
///       description: tf-test-desc
///   defaultApplicationVersion:
///     type: aws:elasticbeanstalk:ApplicationVersion
///     name: default
///     properties:
///       name: tf-test-version-label
///       application: tf-test-name
///       description: application version
///       bucket: ${default.id}
///       key: ${defaultBucketObjectv2.key}
/// ```
class ApplicationVersion extends pulumi.CustomResource {
  /// Name of the Beanstalk Application the version is associated with.
  late final pulumi.Output<String> application;
  /// ARN assigned by AWS for this Elastic Beanstalk Application.
  late final pulumi.Output<String> arn;
  /// S3 bucket that contains the Application Version source bundle.
  late final pulumi.Output<String> bucket;
  /// Short description of the Application Version.
  late final pulumi.Output<String?> description;
  /// On delete, force an Application Version to be deleted when it may be in use by multiple Elastic Beanstalk Environments.
  late final pulumi.Output<bool?> forceDelete;
  /// S3 object that is the Application Version source bundle.
  late final pulumi.Output<String> key;
  /// Unique name for the this Application Version.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Pre-processes and validates the environment manifest (env.yaml ) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional. It validates Elastic Beanstalk configuration files. It doesn’t validate your application’s configuration files, like proxy server or Docker configuration.
  late final pulumi.Output<bool?> process;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of tags for the Elastic Beanstalk Application Version. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ApplicationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationVersion]. {@macro pulumi_elasticbeanstalk_application_version_application_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationVersion(
    String name, {
    ApplicationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/applicationVersion:ApplicationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.description = registerOutput<String?>('description');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.process = registerOutput<bool?>('process');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ApplicationVersion] resource's state with the given [name] and [id].
  static ApplicationVersion get(
    String name,
    pulumi.Input<String> id, {
    ApplicationVersionState? state,
  }) {
    return ApplicationVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/applicationVersion:ApplicationVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.description = registerOutput<String?>('description');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.process = registerOutput<bool?>('process');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
