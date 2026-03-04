import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_args.dart';
import 'activity_encryption_configuration.dart';
import 'activity_state.dart';

/// Provides a Step Function Activity resource
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnActivity = new aws.sfn.Activity("sfn_activity", {name: "my-activity"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_activity = aws.sfn.Activity("sfn_activity", name="my-activity")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sfnActivity = new Aws.Sfn.Activity("sfn_activity", new()
///     {
///         Name = "my-activity",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.NewActivity(ctx, "sfn_activity", &sfn.ActivityArgs{
/// 			Name: pulumi.String("my-activity"),
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
/// import com.pulumi.aws.sfn.Activity;
/// import com.pulumi.aws.sfn.ActivityArgs;
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
///         var sfnActivity = new Activity("sfnActivity", ActivityArgs.builder()
///             .name("my-activity")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sfnActivity:
///     type: aws:sfn:Activity
///     name: sfn_activity
///     properties:
///       name: my-activity
/// ```
///
///
/// ### Encryption
///
/// &gt; *NOTE:* See the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling encryption of data using a customer-managed key for Step Functions State Machines data.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnActivity = new aws.sfn.Activity("sfn_activity", {
///     name: "my-activity",
///     encryptionConfiguration: {
///         kmsKeyId: kmsKeyForSfn.arn,
///         type: "CUSTOMER_MANAGED_KMS_KEY",
///         kmsDataKeyReusePeriodSeconds: 900,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_activity = aws.sfn.Activity("sfn_activity",
///     name="my-activity",
///     encryption_configuration={
///         "kms_key_id": kms_key_for_sfn["arn"],
///         "type": "CUSTOMER_MANAGED_KMS_KEY",
///         "kms_data_key_reuse_period_seconds": 900,
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
///     var sfnActivity = new Aws.Sfn.Activity("sfn_activity", new()
///     {
///         Name = "my-activity",
///         EncryptionConfiguration = new Aws.Sfn.Inputs.ActivityEncryptionConfigurationArgs
///         {
///             KmsKeyId = kmsKeyForSfn.Arn,
///             Type = "CUSTOMER_MANAGED_KMS_KEY",
///             KmsDataKeyReusePeriodSeconds = 900,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.NewActivity(ctx, "sfn_activity", &sfn.ActivityArgs{
/// 			Name: pulumi.String("my-activity"),
/// 			EncryptionConfiguration: &sfn.ActivityEncryptionConfigurationArgs{
/// 				KmsKeyId:                     pulumi.Any(kmsKeyForSfn.Arn),
/// 				Type:                         pulumi.String("CUSTOMER_MANAGED_KMS_KEY"),
/// 				KmsDataKeyReusePeriodSeconds: pulumi.Int(900),
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
/// import com.pulumi.aws.sfn.Activity;
/// import com.pulumi.aws.sfn.ActivityArgs;
/// import com.pulumi.aws.sfn.inputs.ActivityEncryptionConfigurationArgs;
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
///         var sfnActivity = new Activity("sfnActivity", ActivityArgs.builder()
///             .name("my-activity")
///             .encryptionConfiguration(ActivityEncryptionConfigurationArgs.builder()
///                 .kmsKeyId(kmsKeyForSfn.arn())
///                 .type("CUSTOMER_MANAGED_KMS_KEY")
///                 .kmsDataKeyReusePeriodSeconds(900)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sfnActivity:
///     type: aws:sfn:Activity
///     name: sfn_activity
///     properties:
///       name: my-activity
///       encryptionConfiguration:
///         kmsKeyId: ${kmsKeyForSfn.arn}
///         type: CUSTOMER_MANAGED_KMS_KEY
///         kmsDataKeyReusePeriodSeconds: 900
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import activities using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/activity:Activity example arn:aws:states:eu-west-1:123456789098:activity:bar
/// ```
class Activity extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the activity.
  late final pulumi.Output<String> arn;

  /// Date the activity was created.
  late final pulumi.Output<String> creationDate;

  /// Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  late final pulumi.Output<ActivityEncryptionConfiguration>
  encryptionConfiguration;

  /// The name of the activity to create.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Activity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Activity]. {@macro pulumi_sfn_activity_activity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Activity(
    String name, {
    ActivityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sfn/activity:Activity',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    creationDate = registerOutput<String>('creationDate');
    encryptionConfiguration = registerOutput<ActivityEncryptionConfiguration>(
      'encryptionConfiguration',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Activity] resource's state with the given [name] and [id].
  static Activity get(
    String name,
    pulumi.Input<String> id, {
    ActivityState? state,
  }) {
    return Activity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Activity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sfn/activity:Activity',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    creationDate = registerOutput<String>('creationDate');
    encryptionConfiguration = registerOutput<ActivityEncryptionConfiguration>(
      'encryptionConfiguration',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
