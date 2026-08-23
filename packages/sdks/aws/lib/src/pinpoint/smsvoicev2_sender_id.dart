import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_sender_id_args.dart';
import 'smsvoicev2_sender_id_state.dart';
import 'smsvoicev2_sender_id_timeouts.dart';

/// Manages an End User Messaging SMS Sender ID.
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
/// const example = new aws.pinpoint.Smsvoicev2SenderId("example", {
///     senderId: "MYCOMPANY",
///     isoCountryCode: "GB",
///     messageTypes: ["TRANSACTIONAL"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2SenderId("example",
///     sender_id="MYCOMPANY",
///     iso_country_code="GB",
///     message_types=["TRANSACTIONAL"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2SenderId("example", new()
///     {
///         SenderId = "MYCOMPANY",
///         IsoCountryCode = "GB",
///         MessageTypes = new[]
///         {
///             "TRANSACTIONAL",
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
/// 		_, err := pinpoint.NewSmsvoicev2SenderId(ctx, "example", &pinpoint.Smsvoicev2SenderIdArgs{
/// 			SenderId:       pulumi.String("MYCOMPANY"),
/// 			IsoCountryCode: pulumi.String("GB"),
/// 			MessageTypes: pulumi.StringArray{
/// 				pulumi.String("TRANSACTIONAL"),
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
/// resource "aws_pinpoint_smsvoicev2senderid" "example" {
///   sender_id        = "MYCOMPANY"
///   iso_country_code = "GB"
///   message_types    = ["TRANSACTIONAL"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2SenderId;
/// import com.pulumi.aws.pinpoint.Smsvoicev2SenderIdArgs;
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
///         var example = new Smsvoicev2SenderId("example", Smsvoicev2SenderIdArgs.builder()
///             .senderId("MYCOMPANY")
///             .isoCountryCode("GB")
///             .messageTypes("TRANSACTIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2SenderId
///     properties:
///       senderId: MYCOMPANY
///       isoCountryCode: GB
///       messageTypes:
///         - TRANSACTIONAL
/// ```
///
///
/// ### With Deletion Protection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2SenderId("example", {
///     senderId: "MYCOMPANY",
///     isoCountryCode: "GB",
///     messageTypes: ["TRANSACTIONAL"],
///     deletionProtectionEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2SenderId("example",
///     sender_id="MYCOMPANY",
///     iso_country_code="GB",
///     message_types=["TRANSACTIONAL"],
///     deletion_protection_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2SenderId("example", new()
///     {
///         SenderId = "MYCOMPANY",
///         IsoCountryCode = "GB",
///         MessageTypes = new[]
///         {
///             "TRANSACTIONAL",
///         },
///         DeletionProtectionEnabled = true,
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
/// 		_, err := pinpoint.NewSmsvoicev2SenderId(ctx, "example", &pinpoint.Smsvoicev2SenderIdArgs{
/// 			SenderId:       pulumi.String("MYCOMPANY"),
/// 			IsoCountryCode: pulumi.String("GB"),
/// 			MessageTypes: pulumi.StringArray{
/// 				pulumi.String("TRANSACTIONAL"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
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
/// resource "aws_pinpoint_smsvoicev2senderid" "example" {
///   sender_id                   = "MYCOMPANY"
///   iso_country_code            = "GB"
///   message_types               = ["TRANSACTIONAL"]
///   deletion_protection_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2SenderId;
/// import com.pulumi.aws.pinpoint.Smsvoicev2SenderIdArgs;
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
///         var example = new Smsvoicev2SenderId("example", Smsvoicev2SenderIdArgs.builder()
///             .senderId("MYCOMPANY")
///             .isoCountryCode("GB")
///             .messageTypes("TRANSACTIONAL")
///             .deletionProtectionEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2SenderId
///     properties:
///       senderId: MYCOMPANY
///       isoCountryCode: GB
///       messageTypes:
///         - TRANSACTIONAL
///       deletionProtectionEnabled: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `senderId` (String) Sender ID.
/// * `isoCountryCode` (String) Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an End User Messaging SMS Sender ID using the `senderId` and `isoCountryCode`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2SenderId:Smsvoicev2SenderId example "MYSENDERID,US"
/// ```
class Smsvoicev2SenderId extends pulumi.CustomResource {
  /// ARN of the sender ID.
  late final pulumi.Output<String> arn;
  /// Whether deletion protection is enabled. When set to `true`, the sender ID cannot be deleted. Defaults to `false`.
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  late final pulumi.Output<String> isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Defaults to `["TRANSACTIONAL"]` if not specified.
  late final pulumi.Output<List<String>> messageTypes;
  /// Monthly leasing price, in US dollars.
  late final pulumi.Output<String> monthlyLeasingPrice;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether the sender ID is registered.
  late final pulumi.Output<bool> registered;
  /// Unique identifier for the registration.
  late final pulumi.Output<String> registrationId;
  /// Alphanumeric sender ID to request. Must be between 3 and 11 characters long, contain only upper case letters, numbers, and dashes, and cannot be numeric-only. AWS stores sender IDs in upper case, so upper case is required here to keep configuration, state, and resource identity consistent.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> senderId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<Smsvoicev2SenderIdTimeouts?> timeouts;

  /// Creates a new [Smsvoicev2SenderId].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2SenderId]. {@macro pulumi_pinpoint_smsvoicev2_sender_id_smsvoicev2_sender_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2SenderId(
    String name, {
    Smsvoicev2SenderIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2SenderId:Smsvoicev2SenderId',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    isoCountryCode = registerOutput<String>('isoCountryCode');
    messageTypes = registerOutput<List<String>>('messageTypes');
    monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    region = registerOutput<String>('region');
    registered = registerOutput<bool>('registered');
    registrationId = registerOutput<String>('registrationId');
    senderId = registerOutput<String>('senderId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<Smsvoicev2SenderIdTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2SenderIdTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Smsvoicev2SenderId] resource's state with the given [name] and [id].
  static Smsvoicev2SenderId get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2SenderIdState? state,
  }) {
    return Smsvoicev2SenderId._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Smsvoicev2SenderId._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2SenderId:Smsvoicev2SenderId',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    isoCountryCode = registerOutput<String>('isoCountryCode');
    messageTypes = registerOutput<List<String>>('messageTypes');
    monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    region = registerOutput<String>('region');
    registered = registerOutput<bool>('registered');
    registrationId = registerOutput<String>('registrationId');
    senderId = registerOutput<String>('senderId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<Smsvoicev2SenderIdTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2SenderIdTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
