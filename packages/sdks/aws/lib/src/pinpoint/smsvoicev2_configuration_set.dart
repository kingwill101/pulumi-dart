import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_configuration_set_args.dart';
import 'smsvoicev2_configuration_set_state.dart';

/// Manages an AWS End User Messaging SMS Configuration Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2ConfigurationSet("example", {
///     name: "example-configuration-set",
///     defaultSenderId: "example",
///     defaultMessageType: "TRANSACTIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ConfigurationSet("example",
///     name="example-configuration-set",
///     default_sender_id="example",
///     default_message_type="TRANSACTIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2ConfigurationSet("example", new()
///     {
///         Name = "example-configuration-set",
///         DefaultSenderId = "example",
///         DefaultMessageType = "TRANSACTIONAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pinpoint.NewSmsvoicev2ConfigurationSet(ctx, "example", &pinpoint.Smsvoicev2ConfigurationSetArgs{
/// 			Name:               pulumi.String("example-configuration-set"),
/// 			DefaultSenderId:    pulumi.String("example"),
/// 			DefaultMessageType: pulumi.String("TRANSACTIONAL"),
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
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSet;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ConfigurationSetArgs;
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
///         var example = new Smsvoicev2ConfigurationSet("example", Smsvoicev2ConfigurationSetArgs.builder()
///             .name("example-configuration-set")
///             .defaultSenderId("example")
///             .defaultMessageType("TRANSACTIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ConfigurationSet
///     properties:
///       name: example-configuration-set
///       defaultSenderId: example
///       defaultMessageType: TRANSACTIONAL
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import configuration sets using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2ConfigurationSet:Smsvoicev2ConfigurationSet example example-configuration-set
/// ```
class Smsvoicev2ConfigurationSet extends pulumi.CustomResource {
  /// ARN of the configuration set.
  late final pulumi.Output<String> arn;

  /// The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  late final pulumi.Output<String?> defaultMessageType;

  /// The default sender ID to use for this configuration set.
  late final pulumi.Output<String?> defaultSenderId;

  /// The name of the configuration set.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Smsvoicev2ConfigurationSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2ConfigurationSet]. {@macro pulumi_pinpoint_smsvoicev2_configuration_set_smsvoicev2_configuration_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2ConfigurationSet(
    String name, {
    Smsvoicev2ConfigurationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:pinpoint/smsvoicev2ConfigurationSet:Smsvoicev2ConfigurationSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    defaultMessageType = registerOutput<String?>('defaultMessageType');
    defaultSenderId = registerOutput<String?>('defaultSenderId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Smsvoicev2ConfigurationSet] resource's state with the given [name] and [id].
  static Smsvoicev2ConfigurationSet get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2ConfigurationSetState? state,
  }) {
    return Smsvoicev2ConfigurationSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Smsvoicev2ConfigurationSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:pinpoint/smsvoicev2ConfigurationSet:Smsvoicev2ConfigurationSet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    defaultMessageType = registerOutput<String?>('defaultMessageType');
    defaultSenderId = registerOutput<String?>('defaultSenderId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
