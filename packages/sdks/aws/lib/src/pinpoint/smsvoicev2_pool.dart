import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_pool_args.dart';
import 'smsvoicev2_pool_state.dart';
import 'smsvoicev2_pool_timeouts.dart';

/// Manages an AWS End User Messaging SMS Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const exampleSmsvoicev2Pool = new aws.pinpoint.Smsvoicev2Pool("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     originationIdentities: [example.arn],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// example_smsvoicev2_pool = aws.pinpoint.Smsvoicev2Pool("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     origination_identities=[example.arn],
///     tags={
///         "Name": "example",
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
///     var example = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         NumberType = "SIMULATOR",
///         NumberCapabilities = new[]
///         {
///             "SMS",
///         },
///     });
///
///     var exampleSmsvoicev2Pool = new Aws.Pinpoint.Smsvoicev2Pool("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         OriginationIdentities = new[]
///         {
///             example.Arn,
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
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
/// 		example, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			NumberType:     pulumi.String("SIMULATOR"),
/// 			NumberCapabilities: pulumi.StringArray{
/// 				pulumi.String("SMS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2Pool(ctx, "example", &pinpoint.Smsvoicev2PoolArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			OriginationIdentities: pulumi.StringArray{
/// 				example.Arn,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2pool" "example" {
///   iso_country_code       = "US"
///   message_type           = "TRANSACTIONAL"
///   origination_identities = [aws_pinpoint_smsvoicev2phonenumber.example.arn]
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumber;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumberArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2Pool;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PoolArgs;
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
///         var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         var exampleSmsvoicev2Pool = new Smsvoicev2Pool("exampleSmsvoicev2Pool", Smsvoicev2PoolArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .originationIdentities(example.arn())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   exampleSmsvoicev2Pool:
///     type: aws:pinpoint:Smsvoicev2Pool
///     name: example
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       originationIdentities:
///         - ${example.arn}
///       tags:
///         Name: example
/// ```
///
///
/// ### Two-Way Channel
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sns.Topic("example", {name: "example-two-way-channel"});
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example-pool-two-way",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 Service: "sms-voice.amazonaws.com",
///             },
///             Action: "sts:AssumeRole",
///         }],
///     }),
/// });
/// const exampleSmsvoicev2PhoneNumber = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const exampleSmsvoicev2Pool = new aws.pinpoint.Smsvoicev2Pool("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     originationIdentities: [exampleSmsvoicev2PhoneNumber.arn],
///     twoWayEnabled: true,
///     twoWayChannelArn: example.arn,
///     twoWayChannelRole: exampleRole.arn,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sns.Topic("example", name="example-two-way-channel")
/// example_role = aws.iam.Role("example",
///     name="example-pool-two-way",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "sms-voice.amazonaws.com",
///             },
///             "Action": "sts:AssumeRole",
///         }],
///     }))
/// example_smsvoicev2_phone_number = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// example_smsvoicev2_pool = aws.pinpoint.Smsvoicev2Pool("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     origination_identities=[example_smsvoicev2_phone_number.arn],
///     two_way_enabled=True,
///     two_way_channel_arn=example.arn,
///     two_way_channel_role=example_role.arn,
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example-two-way-channel",
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-pool-two-way",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "sms-voice.amazonaws.com",
///                     },
///                     ["Action"] = "sts:AssumeRole",
///                 },
///             },
///         }),
///     });
///
///     var exampleSmsvoicev2PhoneNumber = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         NumberType = "SIMULATOR",
///         NumberCapabilities = new[]
///         {
///             "SMS",
///         },
///     });
///
///     var exampleSmsvoicev2Pool = new Aws.Pinpoint.Smsvoicev2Pool("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         OriginationIdentities = new[]
///         {
///             exampleSmsvoicev2PhoneNumber.Arn,
///         },
///         TwoWayEnabled = true,
///         TwoWayChannelArn = example.Arn,
///         TwoWayChannelRole = exampleRole.Arn,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example-two-way-channel"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "sms-voice.amazonaws.com",
/// 					},
/// 					"Action": "sts:AssumeRole",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-pool-two-way"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSmsvoicev2PhoneNumber, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			NumberType:     pulumi.String("SIMULATOR"),
/// 			NumberCapabilities: pulumi.StringArray{
/// 				pulumi.String("SMS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2Pool(ctx, "example", &pinpoint.Smsvoicev2PoolArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			OriginationIdentities: pulumi.StringArray{
/// 				exampleSmsvoicev2PhoneNumber.Arn,
/// 			},
/// 			TwoWayEnabled:     pulumi.Bool(true),
/// 			TwoWayChannelArn:  example.Arn,
/// 			TwoWayChannelRole: exampleRole.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_sns_topic" "example" {
///   name = "example-two-way-channel"
/// }
/// resource "aws_iam_role" "example" {
///   name = "example-pool-two-way"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "sms-voice.amazonaws.com"
///       }
///       "Action" = "sts:AssumeRole"
///     }]
///   })
/// }
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2pool" "example" {
///   iso_country_code       = "US"
///   message_type           = "TRANSACTIONAL"
///   origination_identities = [aws_pinpoint_smsvoicev2phonenumber.example.arn]
///   two_way_enabled        = true
///   two_way_channel_arn    = aws_sns_topic.example.arn
///   two_way_channel_role   = aws_iam_role.example.arn
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumber;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumberArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2Pool;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PoolArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-two-way-channel")
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example-pool-two-way")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "sms-voice.amazonaws.com")
///                         )),
///                         jsonProperty("Action", "sts:AssumeRole")
///                     )))
///                 )))
///             .build());
///
///         var exampleSmsvoicev2PhoneNumber = new Smsvoicev2PhoneNumber("exampleSmsvoicev2PhoneNumber", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         var exampleSmsvoicev2Pool = new Smsvoicev2Pool("exampleSmsvoicev2Pool", Smsvoicev2PoolArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .originationIdentities(exampleSmsvoicev2PhoneNumber.arn())
///             .twoWayEnabled(true)
///             .twoWayChannelArn(example.arn())
///             .twoWayChannelRole(exampleRole.arn())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sns:Topic
///     properties:
///       name: example-two-way-channel
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example-pool-two-way
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 Service: sms-voice.amazonaws.com
///               Action: sts:AssumeRole
///   exampleSmsvoicev2PhoneNumber:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     name: example
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   exampleSmsvoicev2Pool:
///     type: aws:pinpoint:Smsvoicev2Pool
///     name: example
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       originationIdentities:
///         - ${exampleSmsvoicev2PhoneNumber.arn}
///       twoWayEnabled: true
///       twoWayChannelArn: ${example.arn}
///       twoWayChannelRole: ${exampleRole.arn}
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// &gt; **Note:** `isoCountryCode` is never returned by AWS, so importing a pool with `isoCountryCode` set plans a replacement until removed from config.
///
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Pool.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an AWS End User Messaging SMS Pool using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2Pool:Smsvoicev2Pool example pool-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2Pool extends pulumi.CustomResource {
  /// ARN of the pool.
  late final pulumi.Output<String> arn;
  /// Whether deletion protection is enabled. When `true`, the pool cannot be deleted.
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the pool. Cannot be changed after creation.
  late final pulumi.Output<String?> isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Cannot be changed after creation.
  late final pulumi.Output<String> messageType;
  /// Name of the opt-out list associated with the pool.
  late final pulumi.Output<String> optOutListName;
  /// Set of origination identity ARNs (phone number ARNs or sender ID ARNs) associated with the pool. At least one identity is required at creation.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> originationIdentities;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether the pool relies on self-managed opt-out handling. When `false`, AWS auto-replies to HELP/STOP requests and manages the opt-out list.
  late final pulumi.Output<bool> selfManagedOptOutsEnabled;
  /// Whether shared routes are enabled for the pool. When `true`, messages may use shared phone numbers or sender IDs in countries that allow it.
  late final pulumi.Output<bool> sharedRoutesEnabled;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<Smsvoicev2PoolTimeouts?> timeouts;
  /// Destination for incoming messages. Specify an ARN to receive incoming messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  late final pulumi.Output<String?> twoWayChannelArn;
  /// ARN of the IAM role that End User Messaging SMS assumes to publish inbound messages to the two-way channel.
  late final pulumi.Output<String?> twoWayChannelRole;
  /// Whether inbound message reception is enabled for the pool. When `true`, `twoWayChannelArn` must be set.
  late final pulumi.Output<bool> twoWayEnabled;

  /// Creates a new [Smsvoicev2Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2Pool]. {@macro pulumi_pinpoint_smsvoicev2_pool_smsvoicev2_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2Pool(
    String name, {
    Smsvoicev2PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2Pool:Smsvoicev2Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    isoCountryCode = registerOutput<String?>('isoCountryCode');
    messageType = registerOutput<String>('messageType');
    optOutListName = registerOutput<String>('optOutListName');
    originationIdentities = registerOutput<List<String>>('originationIdentities');
    region = registerOutput<String>('region');
    selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    sharedRoutesEnabled = registerOutput<bool>('sharedRoutesEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<Smsvoicev2PoolTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    twoWayChannelArn = registerOutput<String?>('twoWayChannelArn');
    twoWayChannelRole = registerOutput<String?>('twoWayChannelRole');
    twoWayEnabled = registerOutput<bool>('twoWayEnabled');
  }

  /// Gets an existing [Smsvoicev2Pool] resource's state with the given [name] and [id].
  static Smsvoicev2Pool get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2PoolState? state,
  }) {
    return Smsvoicev2Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Smsvoicev2Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2Pool:Smsvoicev2Pool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    isoCountryCode = registerOutput<String?>('isoCountryCode');
    messageType = registerOutput<String>('messageType');
    optOutListName = registerOutput<String>('optOutListName');
    originationIdentities = registerOutput<List<String>>('originationIdentities');
    region = registerOutput<String>('region');
    selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    sharedRoutesEnabled = registerOutput<bool>('sharedRoutesEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<Smsvoicev2PoolTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    twoWayChannelArn = registerOutput<String?>('twoWayChannelArn');
    twoWayChannelRole = registerOutput<String?>('twoWayChannelRole');
    twoWayEnabled = registerOutput<bool>('twoWayEnabled');
  }
}
