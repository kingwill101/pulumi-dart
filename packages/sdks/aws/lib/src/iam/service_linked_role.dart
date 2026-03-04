import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_args.dart';
import 'service_linked_role_state.dart';

/// Provides an [IAM service-linked role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html).
///
/// ## Example Usage
///
///
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
///     var elasticbeanstalk = new Aws.Iam.ServiceLinkedRole("elasticbeanstalk", new()
///     {
///         AwsServiceName = "elasticbeanstalk.amazonaws.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewServiceLinkedRole(ctx, "elasticbeanstalk", &iam.ServiceLinkedRoleArgs{
/// 			AwsServiceName: pulumi.String("elasticbeanstalk.amazonaws.com"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var elasticbeanstalk = new ServiceLinkedRole("elasticbeanstalk", ServiceLinkedRoleArgs.builder()
///             .awsServiceName("elasticbeanstalk.amazonaws.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   elasticbeanstalk:
///     type: aws:iam:ServiceLinkedRole
///     properties:
///       awsServiceName: elasticbeanstalk.amazonaws.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IAM service-linked role.
///
///
/// Using `pulumi import`, import IAM service-linked roles using role ARN. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serviceLinkedRole:ServiceLinkedRole elasticbeanstalk arn:aws:iam::123456789012:role/aws-service-role/elasticbeanstalk.amazonaws.com/AWSServiceRoleForElasticBeanstalk
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the role.
  late final pulumi.Output<String> arn;

  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  late final pulumi.Output<String> awsServiceName;

  /// The creation date of the IAM role.
  late final pulumi.Output<String> createDate;

  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  late final pulumi.Output<String?> customSuffix;

  /// The description of the role.
  late final pulumi.Output<String?> description;

  /// The name of the role.
  late final pulumi.Output<String> name;

  /// The path of the role.
  late final pulumi.Output<String> path;

  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The stable and unique string identifying the role.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [ServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLinkedRole]. {@macro pulumi_iam_service_linked_role_service_linked_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/serviceLinkedRole:ServiceLinkedRole',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsServiceName = registerOutput<String>('awsServiceName');
    createDate = registerOutput<String>('createDate');
    customSuffix = registerOutput<String?>('customSuffix');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Gets an existing [ServiceLinkedRole] resource's state with the given [name] and [id].
  static ServiceLinkedRole get(
    String name,
    pulumi.Input<String> id, {
    ServiceLinkedRoleState? state,
  }) {
    return ServiceLinkedRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceLinkedRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/serviceLinkedRole:ServiceLinkedRole',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsServiceName = registerOutput<String>('awsServiceName');
    createDate = registerOutput<String>('createDate');
    customSuffix = registerOutput<String?>('customSuffix');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uniqueId = registerOutput<String>('uniqueId');
  }
}
